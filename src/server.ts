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

