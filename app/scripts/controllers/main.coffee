'use strict'

###*
 # @ngdoc function
 # @name spritApp.controller:MainCtrl
 # @description
 # # MainCtrl
 # Controller of the spritApp
###
angular.module 'spritApp'
.controller 'MainCtrl', ($scope) ->
    $scope.awesomeThings = [
        'HTML5 Boilerplate'
        'AngularJS'
        'Karma'
    ]
