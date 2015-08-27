'use strict'

describe 'Controller: NewListenerCtrl', ->

  # load the controller's module
  beforeEach module 'spritApp'

  NewListenerCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    NewListenerCtrl = $controller 'NewListenerCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
