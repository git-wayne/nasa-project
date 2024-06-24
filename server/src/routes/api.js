const express = require("express");
const planetsRouter = require("../models/planets/planets.router");
const launchesRouter = require("./launches/launches.router");

const api = express.Router();

api.use("/planets", planetsRouter);
api.use("/launches", launchesRouter);

module.exports = api;
