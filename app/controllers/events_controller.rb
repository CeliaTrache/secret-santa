class EventsController < ApplicationController
  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
    @event.user = current_user
    @event.save
    redirect_to event_path(@event)
  end

  def show
    @event = Event.find(params[:id])
  end

  def allocate_participants
    event = Event.find(params[:event_id])
    participants = event.participants
    participants.each do |participant|
      if !participant.drawing
        part_allocated = participants.where(:allocated == false).sample
        part_allocated.allocated = true
        participants_list = ParticipantsList.where(participant: participant).first
        raise
        participants_list.participant_allocated = part_allocated.first_name
        participant.drawing = true
      end
    end
    @all_participants = ParticipantsList.where(event: event)
    @all_participants.each do |element|
      element.participant.first_name
      element.participant_allocated
      raise
    end
  end

  private

  def event_params
    params.require(:event).permit(:amount)
  end
end
