"use strict";

function _interopRequireDefault(obj) { return obj && obj.__esModule ? obj : { "default": obj }; }

var _express = require("express");

var _express2 = _interopRequireDefault(_express);

var _bodyParser = require("body-parser");

var _bodyParser2 = _interopRequireDefault(_bodyParser);

var app = (0, _express2["default"])();
app.use(_bodyParser2["default"].json());

// Ruta raíz para Render
app.get("/", function (req, res) {
  res.send("Backend activo en Render - Cerebro Nexo");
});

// Healthcheck
app.get("/api/health", function (req, res) {
  res.json({ status: "ok", service: "cerebro-nexo-backend" });
});

/* ============================
   Endpoints principales
   ============================ */

// Posts
app.get("/api/posts", function (req, res) {
  res.json([{ id: 1, title: "Primer post", content: "Contenido inicial" }, { id: 2, title: "Segundo post", content: "Más contenido" }]);
});

app.post("/api/posts", function (req, res) {
  var _req$body = req.body;
  var title = _req$body.title;
  var content = _req$body.content;

  res.json({ id: Date.now(), title: title, content: content });
});

// Capítulos
app.get("/api/chapters", function (req, res) {
  res.json([{ id: 1, name: "Capítulo 1", description: "Introducción" }, { id: 2, name: "Capítulo 2", description: "Desarrollo" }]);
});

app.post("/api/chapters", function (req, res) {
  var _req$body2 = req.body;
  var name = _req$body2.name;
  var description = _req$body2.description;

  res.json({ id: Date.now(), name: name, description: description });
});

// Eventos
app.get("/api/events", function (req, res) {
  res.json([{ id: 1, event: "Evento inicial", date: "2026-02-23" }, { id: 2, event: "Evento futuro", date: "2026-03-01" }]);
});

app.post("/api/events", function (req, res) {
  var _req$body3 = req.body;
  var event = _req$body3.event;
  var date = _req$body3.date;

  res.json({ id: Date.now(), event: event, date: date });
});

// Comentarios
app.get("/api/comments/:id", function (req, res) {
  var id = req.params.id;

  res.json({ id: id, comment: "Comentario de prueba para el recurso " + id });
});

app.post("/api/comments", function (req, res) {
  var _req$body4 = req.body;
  var postId = _req$body4.postId;
  var comment = _req$body4.comment;

  res.json({ id: Date.now(), postId: postId, comment: comment });
});

// Usuarios
app.get("/api/users", function (req, res) {
  res.json([{ id: 1, name: "Usuario 1", email: "user1@example.com" }, { id: 2, name: "Usuario 2", email: "user2@example.com" }]);
});

app.post("/api/users", function (req, res) {
  var _req$body5 = req.body;
  var name = _req$body5.name;
  var email = _req$body5.email;

  res.json({ id: Date.now(), name: name, email: email });
});

/* ============================
   Puerto dinámico para Render
   ============================ */
var PORT = process.env.PORT || 3000;
app.listen(PORT, function () {
  console.log("Servidor corriendo en puerto " + PORT);
});