utils   = require('chaplin').utils
View    = require '../base/view'
store   = require 'store'

module.exports = class Form01View extends View
  autoRender: true
  container: '#outer-page-container'
  template: require '../../templates/form/01'

  events:
    'click img': 'onClick'

  onClick: (e) ->

    transaction = store.get 'transaction'

    if transaction
      transaction.symptomLocationId = 0

      store.set 'transaction', transaction
