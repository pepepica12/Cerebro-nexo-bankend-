import 'dotenv/config';
import express from 'express';

import { verifySignature } from './lib/verifySignature';
import { reposRouter } from './routes/repos';
import { platformsRouter } from './routes/platforms';
import { cdnRouter } from './routes/cdn';

const app = express();
app.use(express.json());

// Rutas principales
app.use('/repos', reposRouter);
app.use('/platforms', platformsRouter);
app.use('/cdn', cdnRouter);

// Healthcheck
app.get('/health', (_req, res) => {
  res.json({ ok: true, service: 'nexus-brain-backend' });
});

// Ejemplo
app.post('/api/ejemplo', (req, res) => {
  res.json({
    ok: true,
    recibido: req.body,
    mensaje: "Ruta funcionando correctamente"
  });
});

// ----------------------
// RUTA /api/verify REAL
// ----------------------
app.post('/api/verify', (req, res) => {
  const did = req.header('X-DID');
  const signature = req.header('X-Signature');

  if (!did || !signature) {
    return res.status(400).json({ ok: false, error: "Faltan encabezados DID o Signature" });
  }

  const publicKey = process.env.PUBLIC_KEY;
  if (!publicKey) {
    return res.status(500).json({ ok: false, error: "PUBLIC_KEY no está configurada" });
  }

  const message = JSON.stringify(req.body);
  const valid = verifySignature(publicKey, message, signature);

  res.json({
    ok: true,
    valid,
    did,
    body: req.body,
    mensaje: valid ? "Firma válida" : "Firma inválida"
  });
});

// Iniciar servidor
const port = process.env.PORT || 4000;
app.listen(port, () => {
  console.log(`Nexus Brain API running on port ${port}`);
});
