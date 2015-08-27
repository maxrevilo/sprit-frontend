'use strict'

###*
 # @ngdoc function
 # @name spritApp.controller:AboutCtrl
 # @description
 # # AboutCtrl
 # Controller of the spritApp
###
angular.module 'spritApp'
.controller 'AboutCtrl', ($scope) ->
    $scope.awesomeThings = [
        'HTML5 Boilerplate'
        'AngularJS'
        'Karma'
    ]
