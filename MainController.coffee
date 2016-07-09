Observable = require('FuseJS/Observable')

class App
  constructor: ->
    console.log('App building...', new Date().toString())


module.exports = new App()