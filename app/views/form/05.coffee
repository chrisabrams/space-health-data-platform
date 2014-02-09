utils   = require('chaplin').utils
View    = require '../base/view'
store   = require 'store'

module.exports = class Form05View extends View
  autoRender: true
  container: '#outer-page-container'
  template: require '../../templates/form/05'

  events:
    'click #vital-btn'   : 'onClick'

  onClick: (e) ->

    transaction = store.get 'transaction'

    if transaction
      transaction.vitals =
        bp_s: [88, 130, 130, 130, 130, 130, 130, 88]
        bp_d: [80, 100, 80,  80,  80,  80,  100, 100]
        rr:   [20, 20,  12,  20,  20,  20,  20,  20]
        oxy:  [95, 95,  95,  95,  88,  95,  95,  95]
        temp: [98, 98,  98,  98,  98,  101, 101, 101]

      store.set 'transaction', transaction
