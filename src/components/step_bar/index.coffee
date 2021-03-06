z = require 'zorium'
_defaults = require 'lodash/defaults'
_map = require 'lodash/map'
_range = require 'lodash/range'

Icon = require '../icon'
colors = require '../../colors'

if window?
  require './index.styl'

module.exports = class StepBar
  constructor: ({@step}) ->

    @state = z.state
      step: @step
      isLoading: false

  render: ({save, steps, isStepCompleted, isLoading, onComplete}) =>
    {step} = @state.getValue()

    save = _defaults save, {
      text: 'Save'
      onclick: -> null
    }

    z '.z-step-bar',
      z '.g-grid',
        z '.previous', {
          onclick: =>
            if step > 1
              @step.onNext step - 1
        },
          if step isnt 1
            'Back'

        z '.step-counter',
          _map _range(steps), (i) ->
            z '.step-dot',
              className: z.classKebab {isActive: step is i + 1}

        z '.next', {
          className: z.classKebab {canContinue: isStepCompleted}
          onclick: =>
            if isStepCompleted
              if step is steps
                save.onclick()
              else
                @step.onNext step + 1
        },
          if isLoading
          then 'Loading...'
          else if step is steps
          then save.text
          else 'Next'
