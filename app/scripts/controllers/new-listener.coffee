'use strict'

###*
 # @ngdoc function
 # @name spritApp.controller:NewListenerCtrl
 # @description
 # # NewListenerCtrl
 # Controller of the spritApp
###
angular.module 'spritApp'
.controller 'NewListenerCtrl', ($scope, $window, $routeParams, Listener, ChildEvent, ActionType) ->
    $scope.projectId = $routeParams.projectId
    $scope.moduleId = $routeParams.moduleId

    baseRef = new $window.Firebase("https://sprit.firebaseio.com/")

    init = ->
        $scope.intance = new Listener $scope.projectId, $scope.moduleId
    init()

    $scope.childEvents = ChildEvent
    $scope.actionTypes = ActionType

    $scope.addAction = ->
        $scope.intance.addAction()

    $scope.removeAction = (actionId) ->
        $scope.intance.removeAction actionId

    $scope.addVariableTo = (actionId) ->
        $scope.intance.addVariableToAction actionId

    $scope.removeVariable = (actionId, variableId) ->
        $scope.intance.removeVariable actionId, variableId

    $scope.create = () ->
        forward = confirm "Are you sure you want to create this listener?"
        if forward
            $scope.intance
            .$save()
            .then ->
                init()
                alert "created"
            .catch (err) ->
                alert "Error #{err}"
