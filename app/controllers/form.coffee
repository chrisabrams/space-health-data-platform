Controller    = require './base/controller'
FormView      = require '../views/form/index'

module.exports = class FormController extends Controller

  index: ->

    @view = new FormView

    @
