'use strict'

###*
 # @ngdoc function
 # @name spritApp.controller:MyProjectsCtrl
 # @description
 # # MyProjectsCtrl
 # Controller of the spritApp
###
angular.module 'spritApp'
.controller 'MyProjectsCtrl', ($scope, $window, $firebaseObject) ->
    baseRef = new $window.Firebase("https://sprit.firebaseio.com/")
    projectsRef = baseRef.child 'projects'
    $scope.projects = $firebaseObject projectsRef

    $scope.create = ->
        projectsRef.push {
            name: $scope.newInstance.name
            owner: $scope.newInstance.owner
            modules:
                MAIN:
                    name: "Main"
                    active: true
        }
        $scope.newInstance = {}

    $scope.delete = (projectId)->
        result = confirm("Are you sure?")
        if result
            projectsRef
            .child projectId
            .remove()

