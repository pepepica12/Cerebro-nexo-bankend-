import { verifySignature } from './lib/verifySignature';
import 'dotenv/config';
import express from 'express';
import { reposRouter } from './routes/repos';
import { platformsRouter } from './routes/platforms';
import { cdnRouter } from './routes/cdn';
import { searchCxRouter } from './routes/searchCx';

const app = express();
app.use(express.json());

app.use('/repos', reposRouter);
app.use('/platforms', platformsRouter);
app.use('/cdn', cdnRouter);
app.use('/search', searchCxRouter);

app.get('/health', (_req, res) => {
  res.json({ ok: true, service: 'nexus-brain-backend' });
});

const port = process.env.PORT || 4000;
app.listen(port, () => {
  console.log(`Nexus Brain API running on port ${port}`);
});

app.post('/api/ejemplo', (req, res) => {
  res.json({
    ok: true,
    recibido: req.body,
    mensaje: "Ruta funcionando correctamente"
  });
});


app.post('/api/verify', (req, res) => {
  const did = req.header('X-DID');
  const signature = req.header('X-Signature');

  res.json({
    ok: true,
    did,
    signature,
    body: req.body,
    mensaje: "Endpoint /api/verify operativo (sin verificación criptográfica aún)"
  });
});


// ----------------------
// RUTA /api/verify REAL
// ----------------------
app.post('/api/verify', (req, res) => {
  const did = req.header('X-DID');
  const signature = req.header('X-Signature');

  if (!did || !signature) {
    return res.status(400).json({ ok: false, error: "Faltan headers X-DID o X-Signature" });
  }

  const publicKey = process.env.PUBLIC_KEY;
  if (!publicKey) {
    return res.status(500).json({ ok: false, error: "PUBLIC_KEY no configurada en Render" });
  }

  const message = JSON.stringify(req.body);
  const valid = verifySignature(publicKey, message, signature);

  res.json({
    ok: valid,
    did,
    body: req.body,
    mensaje: valid ? "Firma válida" : "Firma inválida"
  });
});
