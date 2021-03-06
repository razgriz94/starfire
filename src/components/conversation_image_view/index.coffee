z = require 'zorium'

Icon = require '../icon'
ButtonBack = require '../button_back'
AppBar = require '../app_bar'
colors = require '../../colors'
config = require '../../config'

if window?
  require './index.styl'

module.exports = class ConversationImageView
  constructor: ({@model, @router}) ->
    @$buttonBack = new ButtonBack {@router}
    @$appBar = new AppBar {@model}

    @state = z.state
      imageData: @model.imageViewOverlay.getImageData()
      windowSize: @model.window.getSize()
      appBarHeight: @model.window.getAppBarHeight()

  afterMount: =>
    @router.onBack =>
      @model.imageViewOverlay.setImageData null

  beforeUnmount: =>
    @router.onBack null

  render: =>
    {windowSize, appBarHeight, imageData} = @state.getValue()

    imageData ?= {}

    windowHeight = windowSize.height - appBarHeight
    imageAspectRatio = imageData.aspectRatio
    windowAspectRatio = windowSize.width / windowHeight

    # 3:1, 1:1
    if imageAspectRatio > windowAspectRatio
      imageWidth = windowSize.width
      imageHeight = imageWidth / imageAspectRatio
    else
      imageHeight = windowHeight
      imageWidth = imageHeight * imageAspectRatio

    z '.z-conversation-image-view',
      z @$appBar, {
        title: 'Image'
        $topLeftButton: z @$buttonBack, {
          onclick: =>
            @model.imageViewOverlay.setImageData null
        }
      }
      z 'img',
        src: imageData.url
        width: imageWidth
        height: imageHeight
