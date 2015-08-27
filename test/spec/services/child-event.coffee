'use strict'

describe 'Service: childEvent', ->

  # load the service's module
  beforeEach module 'spritApp'

  # instantiate service
  childEvent = {}
  beforeEach inject (_childEvent_) ->
    childEvent = _childEvent_

  it 'should do something', ->
    expect(!!childEvent).toBe true
