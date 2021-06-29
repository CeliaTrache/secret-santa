class Event < ApplicationRecord
  belongs_to :user
  has_many :participants_lists
  has_many :participants, through: :participants_lists
end
