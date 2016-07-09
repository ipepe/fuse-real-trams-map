Observable = require('FuseJS/Observable')

class App
  constructor: ->
    console.log('App building...', new Date().toString())

  onPageLoaded: (url) ->
    console.log('Url:', url)

  settingsButtonClicked: ->
    console.log('Settings!!!!')


module.exports = new App()