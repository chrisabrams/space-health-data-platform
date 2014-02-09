utils   = require('chaplin').utils
View    = require '../base/view'
store   = require 'store'

module.exports = class Form03View extends View
  autoRender: true
  container: '#outer-page-container'
  template: require '../../templates/form/03'

  events:
    'click a': 'onClick'

  onClick: (e) ->

    transaction = store.get 'transaction'

    if transaction
      transaction.symptomLevel = 1

      store.set 'transaction', transaction
