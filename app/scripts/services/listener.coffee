'use strict'

###*
 # @ngdoc service
 # @name spritApp.listener
 # @description
 # # listener
 # Service in the spritApp.
###
angular.module 'spritApp'
.service 'Listener', ($window, $q, $firebaseObject)->
    baseRef = new $window.Firebase("https://sprit.firebaseio.com/")

    class Listener
        constructor: (projectId, moduleId, id) ->
            if not projectId? or not moduleId?
                throw new Error "Mustt set projectId and moduleId"

            ref = baseRef
            .child 'projects'
            .child projectId
            .child 'modules'
            .child moduleId
            .child 'listeners'

            if id?
                ref = ref.child id
            else
                ref = ref.push()

            result =  $firebaseObject.call @, ref
            return result

        addAction: (actionData={}) ->
            id = @$ref()
            .child "actions"
            .push()
            .key()

            @actions = {} if not @actions?

            @actions[id] = actionData

            return @actions[id]

        removeAction: (actionId) ->
            delete @actions[actionId]

        addVariableToAction: (actionId, actionData={position: 0}) ->
            id = @$ref()
            .child "actions"
            .child actionId
            .child "variables"
            .push()
            .key()

            if not @actions?
                @actions = {}
            if not @actions[actionId]?
                @actions[actionId] = variables: {}
            if not @actions[actionId].variables?
                @actions[actionId].variables = {}

            @actions[actionId]
            .variables[id] = actionData

        removeVariable: (actionId, variableId) ->
            delete @actions[actionId].variables[variableId]


    ExtendedListener = $firebaseObject.$extend Listener

    return ExtendedListener



