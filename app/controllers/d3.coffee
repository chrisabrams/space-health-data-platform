Controller    = require './base/controller'
D3ExampleView = require '../views/d3/example'

module.exports = class D3Controller extends Controller

  index: ->

    @view = new D3ExampleView

    @
