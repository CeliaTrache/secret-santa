class Participant < ApplicationRecord
  has_many :participants_lists
  has_many :events, through: :participants_lists
end
