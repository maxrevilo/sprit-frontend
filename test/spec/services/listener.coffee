'use strict'

describe 'Service: listener', ->

  # load the service's module
  beforeEach module 'spritApp'

  # instantiate service
  listener = {}
  beforeEach inject (_listener_) ->
    listener = _listener_

  it 'should do something', ->
    expect(!!listener).toBe true
