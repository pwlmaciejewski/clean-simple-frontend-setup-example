$ = require 'jquery'
Olay = require 'olay'

psychoOlay = new Olay $('.popup')

$('.psycho-button').on 'click', (event) ->
    event.preventDefault()
    psychoOlay.show()