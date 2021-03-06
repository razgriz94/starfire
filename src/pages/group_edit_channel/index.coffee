z = require 'zorium'

Head = require '../../components/head'
GroupEditChannel = require '../../components/group_edit_channel'

if window?
  require './index.styl'

module.exports = class GroupEditChannelPage
  hideDrawer: true

  constructor: ({model, requests, @router, serverData}) ->
    group = requests.flatMapLatest ({route}) ->
      model.group.getById route.params.id

    conversation = requests.flatMapLatest ({route}) ->
      model.conversation.getById route.params.conversationId

    @$head = new Head({
      model
      requests
      serverData
      meta: {
        title: 'Edit Channel'
        description: 'Edit Channel'
      }
    })
    @$groupEditChannel = new GroupEditChannel {
      model, @router, serverData, group, conversation
    }

    @state = z.state
      group: group
      windowSize: model.window.getSize()

  renderHead: => @$head

  render: =>
    {group, windowSize} = @state.getValue()

    z '.p-group-edit-channel', {
      style:
        height: "#{windowSize.height}px"
    },
      @$groupEditChannel
