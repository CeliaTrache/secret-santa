class ParticipantsList < ApplicationRecord
  belongs_to :event
  belongs_to :participant
end
