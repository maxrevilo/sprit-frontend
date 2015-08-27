'use strict'

###*
 # @ngdoc service
 # @name spritApp.ChildEvent
 # @description
 # # ChildEvent
 # Service in the spritApp.
###
angular.module 'spritApp'
.service 'ChildEvent', ->
    childAdded: 'child_added'
    childChanged: 'child_changed'
    childRemoved: 'child_removed'
