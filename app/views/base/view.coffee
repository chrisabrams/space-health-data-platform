Chaplin = require 'chaplin'
require '../../lib/view-helper'

module.exports = class View extends Chaplin.View

  listen:
    'addedToDOM': 'onAddedToDOM'

  onAddedToDOM: ->

    @$('.selectpicker').selectpicker();

  getTemplateFunction: ->
    @template
