'use strict'

###*
 # @ngdoc service
 # @name spritApp.ActionType
 # @description
 # # ActionType
 # Service in the spritApp.
###
angular.module 'spritApp'
.service 'ActionType', ->
    append: 'Append'
    set: 'Set'
    update: 'Update'
    remove: 'Remove'
    httpRequest: 'HttpRequest'
