class ParticipantsController < ApplicationController
  skip_forgery_protection

  def new
    @participant = Participant.new
    @event = Event.find(params[:event_id])
  end

  def create
    @participant = Participant.new(participant_params)
    @event = Event.find(params[:event_id])
    if @participant.save
      ParticipantsList.create(participant: @participant, event: @event)
      redirect_to event_path(@event)
    else
      render :new
    end
  end

  private

  def participant_params
    params.require(:participant).permit(:email, :first_name)
  end
end
