'use strict'

###*
 # @ngdoc function
 # @name spritApp.controller:ProjectDashboardCtrl
 # @description
 # # ProjectDashboardCtrl
 # Controller of the spritApp
###
angular.module 'spritApp'
.controller 'ProjectDashboardCtrl', ($scope, $window, $routeParams, $firebaseObject) ->
    baseRef = new $window.Firebase("https://sprit.firebaseio.com/")
    $scope.projectId = $routeParams.projectId

    projectRef = baseRef.child('projects').child $scope.projectId
    
    $scope.project = $firebaseObject projectRef

    $scope.project.$bindTo $scope, "project"


    $scope.create = ->
        projectRef
        .child 'modules'
        .push {
            name: $scope.newModule.name
            active: true
        }
        $scope.newModule = {}

    $scope.delete = (moduleId)->
        result = confirm("Are you sure?")
        if result
            projectRef
            .child 'modules'
            .child moduleId
            .remove()




    

