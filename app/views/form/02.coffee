utils   = require('chaplin').utils
View    = require '../base/view'
store   = require 'store'

module.exports = class Form02View extends View
  autoRender: true
  container: '#outer-page-container'
  template: require '../../templates/form/02'

  events:
    'click a': 'onClick'

  onClick: (e) ->

    transaction = store.get 'transaction'

    if transaction
      transaction.symptomId = 148

      store.set 'transaction', transaction
