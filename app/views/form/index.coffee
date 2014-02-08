utils   = require('chaplin').utils
View    = require '../base/view'

module.exports = class FormView extends View
  autoRender: true
  container: '#outer-page-container'
  template: require '../../templates/form/index'

  events:
    '#astronaut-list change': 'onChange'

  onChange: (e) ->

    if typeof $(e.target).attr('value') is 'string'

      utils.redirectTo 'form/01'
      #@dispose()
