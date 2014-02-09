utils   = require('chaplin').utils
View    = require '../base/view'
store   = require 'store'

module.exports = class Form06View extends View
  autoRender: true
  container: '#outer-page-container'
  template: require '../../templates/form/06'

  initialize: ->
    super

    transaction = store.get 'transaction'

    if transaction
      transaction.treatment = [
        'Advil or Tylenol'
        'Rest in a quiet, dark room'
        'Hot or cold compresses to your head or neck'
        'Massage and small amounts of caffeine'
      ]

      store.set 'transaction', transaction

      $xhr = $.ajax
        data: transaction
        dataType: 'json'
        type: 'POST'
        url: '/transactions'
