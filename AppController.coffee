Observable = require('FuseJS/Observable')

class AppController
  settingsOptions: Observable('Map', 'Credits', 'Settings', 'Contact')
  constructor: ->
    console.log('App building...', new Date().toString())

  onPageLoaded: (url) ->
    console.log('Url:', url)

  settingsButtonClicked: ->
    console.log('Settings!!!!')


module.exports = new AppController()