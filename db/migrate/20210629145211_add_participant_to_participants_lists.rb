class AddParticipantToParticipantsLists < ActiveRecord::Migration[6.1]
  def change
    add_column :participants_lists, :participant_allocated, :string
  end
end
