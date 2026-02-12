"use strict";
var __importDefault = (this && this.__importDefault) || function (mod) {
    return (mod && mod.__esModule) ? mod : { "default": mod };
};
Object.defineProperty(exports, "__esModule", { value: true });
require("dotenv/config");
const express_1 = __importDefault(require("express"));
const repos_1 = require("./routes/repos");
const platforms_1 = require("./routes/platforms");
const cdn_1 = require("./routes/cdn");
const searchCx_1 = require("./routes/searchCx");
const app = (0, express_1.default)();
app.use(express_1.default.json());
app.use('/repos', repos_1.reposRouter);
app.use('/platforms', platforms_1.platformsRouter);
app.use('/cdn', cdn_1.cdnRouter);
app.use('/search', searchCx_1.searchCxRouter);
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
