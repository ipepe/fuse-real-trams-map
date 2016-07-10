Observable = require('FuseJS/Observable')

class SettingsButtonComponent
  isShown: Observable(false)
  items: Observable(null)
  selectedItem: Observable(null)

  buttonClicked: =>
    @isShown.value = !@isShown.value

  itemClicked: (event) =>
    @selectedItem.value = event.data
    @isShown.value = false
    
  focusLost: =>
    @isShown.value = false

module.exports = new SettingsButtonComponent()