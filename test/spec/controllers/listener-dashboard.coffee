'use strict'

describe 'Controller: ListenerDashboardCtrl', ->

  # load the controller's module
  beforeEach module 'spritApp'

  ListenerDashboardCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ListenerDashboardCtrl = $controller 'ListenerDashboardCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
