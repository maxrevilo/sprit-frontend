'use strict'

describe 'Controller: MyProjectsCtrl', ->

  # load the controller's module
  beforeEach module 'spritApp'

  MyProjectsCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    MyProjectsCtrl = $controller 'MyProjectsCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
