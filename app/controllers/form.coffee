Controller    = require './base/controller'
Form00View    = require '../views/form/index'
Form01View    = require '../views/form/01'
Form02View    = require '../views/form/02'
Form03View    = require '../views/form/03'
Form04View    = require '../views/form/04'
Form05View    = require '../views/form/05'
Form06View    = require '../views/form/06'

module.exports = class FormController extends Controller

  index: ->

    @view = new Form00View

    @

  step01: ->

    @view = new Form01View

    @

  step02: ->

    @view = new Form02View

    @

  step03: ->

    @view = new Form03View

    @

  step04: ->

    @view = new Form04View

    @

  step05: ->

    @view = new Form05View

    @

  step06: ->

    @view = new Form06View

    @
