class TransitionController < ApplicationController
  # POST /perform/:uuid
  def perform
    machine = Machine.find_by!(uuid: params[:uuid])

  end

  # GET /queued/:uuid
  def queued
    machine = Machine.find_by!(uuid: params[:uuid])

  end
end
