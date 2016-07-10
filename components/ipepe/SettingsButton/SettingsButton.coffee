Observable = require('FuseJS/Observable')

class SettingsButtonComponent
  isShown: Observable(false)
  items: Observable(null)
  selectedItem: Observable(null)
  itemSelectedCallback: null

  constructor: (self) ->
    @itemSelectedCallback = self?.Callback?.value

  buttonClicked: =>
    @isShown.value = !@isShown.value

  itemClicked: (event) =>
    if typeof @itemSelectedCallback == 'function'
      @itemSelectedCallback(event.data)
    @selectedItem.value = event.data
    @isShown.value = false
    
  focusLost: =>
    @isShown.value = false

module.exports = new SettingsButtonComponent(this)