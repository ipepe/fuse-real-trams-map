Observable = require('FuseJS/Observable')

class AppController
  settingsOptions: Observable('Map', 'Credits', 'Settings', 'Contact')
  constructor: ->
    console.log('App building...', new Date().toString())

  onPageLoaded: (url) ->
    console.log('Url:', url)

  settingChosenCallback: (route) ->
    console.log('transitionCallback!!!!', route)


module.exports = new AppController()