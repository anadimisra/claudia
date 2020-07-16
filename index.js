'use strict';

var ApiBuilder = require('claudia-api-builder'),
api = new ApiBuilder();

module.exports = api;

api.get('/animals/{name}', function (request) {
  return 'Hello ' + request.pathParams.name;
});

