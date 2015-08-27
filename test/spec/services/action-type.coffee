'use strict'

describe 'Service: actionType', ->

  # load the service's module
  beforeEach module 'spritApp'

  # instantiate service
  actionType = {}
  beforeEach inject (_actionType_) ->
    actionType = _actionType_

  it 'should do something', ->
    expect(!!actionType).toBe true
