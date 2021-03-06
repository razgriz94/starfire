z = require 'zorium'
Rx = require 'rx-lite'

Head = require '../../components/head'
Thread = require '../../components/thread'
Decks = require '../../components/decks'
Icon = require '../../components/icon'
colors = require '../../colors'

if window?
  require './index.styl'

module.exports = class ThreadPage
  hideDrawer: true

  constructor: ({@model, requests, @router, serverData}) ->
    thread = requests.flatMapLatest ({route}) =>
      @model.thread.getById route.params.id

    @$head = new Head({
      @model
      requests
      serverData
      meta: {
        title: 'Community thread'
        description: 'Community'
      }
    })
    @$thread = new Thread {@model, @router, thread}

    @state = z.state
      windowSize: @model.window.getSize()

  renderHead: => @$head

  render: =>
    {windowSize, $el} = @state.getValue()

    z '.p-thread', {
      style:
        height: "#{windowSize.height}px"
    },
      z @$thread
