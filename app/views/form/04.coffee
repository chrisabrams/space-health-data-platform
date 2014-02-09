utils   = require('chaplin').utils
View    = require '../base/view'
store   = require 'store'

module.exports = class Form04View extends View
  autoRender: true
  container: '#outer-page-container'
  template: require '../../templates/form/04'

  events:
    'click #continue'   : 'onClick'
    'change #assoc-sym' : 'onPainAssociatedSymptomSelection'
    'change #pain-dur'  : 'onPainDurationSelection'
    'change #pain-loc'  : 'onPainLocationSelection'

  onClick: (e) ->

    transaction = store.get 'transaction'

    if transaction
      transaction.painDesc = @$('#pain-desc').val()

      store.set 'transaction', transaction

  onPainAssociatedSymptomSelection: (e) ->

    transaction = store.get 'transaction'

    if transaction and typeof e.target.value is 'string'
      transaction.associatedSymptom = e.target.value

      store.set 'transaction', transaction

  onPainDurationSelection: (e) ->

    transaction = store.get 'transaction'

    if transaction and typeof e.target.value is 'string'
      transaction.painDuration = e.target.value

      store.set 'transaction', transaction

  onPainLocationSelection: (e) ->

    transaction = store.get 'transaction'

    if transaction and typeof e.target.value is 'string'
      transaction.painLocation = e.target.value

      store.set 'transaction', transaction
