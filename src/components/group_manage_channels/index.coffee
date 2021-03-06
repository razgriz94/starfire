z = require 'zorium'

ChannelList = require '../channel_list'
Icon = require '../icon'
Fab = require '../fab'
colors = require '../../colors'

if window?
  require './index.styl'

module.exports = class GroupInfo
  constructor: ({@model, @router, group}) ->

    @$fab = new Fab()
    @$addIcon = new Icon()
    @$channelList = new ChannelList {@model, group}

    @state = z.state {
      group
      me: @model.user.getMe()
    }

  render: =>
    {me, group} = @state.getValue()

    z '.z-group-manage-channels',
      z @$channelList, {
        onclick: (e, {id}) =>
          @router.go "/group/#{group.id}/editChannel/#{id}"
      }

      z '.fab',
        z @$fab,
          colors:
            c500: colors.$primary500
          $icon: z @$addIcon, {
            icon: 'add'
            isTouchTarget: false
            color: colors.$white
          }
          onclick: =>
            @router.go "/group/#{group.id}/newChannel"
