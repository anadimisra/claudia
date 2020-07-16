var ApiBuilder = require('claudia-api-builder'),
api = new ApiBuilder();

module.exports = api;

api.get('/', function () {
  'use strict';
  return 'Hello World';
});

