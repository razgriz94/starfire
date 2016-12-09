z = require 'zorium'
Rx = require 'rx-lite'
Button = require 'zorium-paper/button'

config = require '../../config'
colors = require '../../colors'
Head = require '../../components/head'
ThreadReply = require '../../components/thread_reply'

if window?
  require './index.styl'

module.exports = class ThreadReplyPage
  constructor: ({model, requests, @router, serverData}) ->
    threadId = requests.map ({route}) ->
      route.params.id

    @$head = new Head({
      model
      requests
      serverData
      meta: {
        title: 'Reply to Thread'
        description: 'Reply to Thread'
      }
    })
    @$threadReply = new ThreadReply {model, @router, threadId}

  renderHead: => @$head

  render: =>
    z '.p-thread-reply', {
      style:
        height: "#{window?.innerHeight}px"
    },
      @$threadReply
