'use strict'

describe 'Controller: ProjectDashboardCtrl', ->

  # load the controller's module
  beforeEach module 'spritApp'

  ProjectDashboardCtrl = {}
  scope = {}

  # Initialize the controller and a mock scope
  beforeEach inject ($controller, $rootScope) ->
    scope = $rootScope.$new()
    ProjectDashboardCtrl = $controller 'ProjectDashboardCtrl', {
      $scope: scope
    }

  it 'should attach a list of awesomeThings to the scope', ->
    expect(scope.awesomeThings.length).toBe 3
