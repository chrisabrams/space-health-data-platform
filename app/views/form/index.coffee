Backbone = require 'backbone'
utils    = require('chaplin').utils
View     = require '../base/view'
mediator = require('chaplin').mediator
store    = require 'store'

module.exports = class Form00View extends View
  autoRender: true
  container: '#outer-page-container'
  template: require '../../templates/form/index'

  events:
    'change #astronaut-list': 'onChange'

  initialize: ->
    super

    store.remove 'transaction'

  onChange: (e) ->

    if typeof e.target.value is 'string'

      store.set 'transaction',
        astronautId: e.target.value

      mediator.execute 'router:route', {url: 'form/01'}
      #@dispose()
