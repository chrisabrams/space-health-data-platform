Application = require './application'
routes      = require './routes'

$ ->

  new Application {
    title: 'hdpi',
    controllerSuffix: '',
    routes
  }
