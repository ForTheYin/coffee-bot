class TransitionController < ApplicationController
  skip_before_action :verify_authenticity_token

  # POST /perform/:uuid
  def perform
    state = Machine.find_by!(uuid: params[:uuid]).machine_state
    state.brew_button = params.dig(:current_state, :brew_button)
    state.add_temperature!(params.dig(:current_state, :temperature))
    state.save!

    print params[:actions_performed]
    params[:actions_performed].each do |action_performed|
      MachineAction.
          find_by(uuid: action_performed[:uuid]).
          update!(status: action_performed[:status])
    end

    render status: :ok, json: {}
  end

  # GET /queued/:uuid
  def queued
    machine = Machine.find_by!(uuid: params[:uuid])
    state = machine.machine_state
    queued_actions = machine.machine_actions.queued

    render status: :ok, json: {
        current_state: {
            brew_button: state.brew_button
        },
        queued_actions: queued_actions.map do |queued_action|
          {
              uuid: queued_action[:uuid],
              status: queued_action[:status],
              action: queued_action[:action]
          }
        end
    }
  end
end
