class AddParticipantsToParticipants < ActiveRecord::Migration[6.1]
  def change
    add_column :participants, :allocated, :boolean
    add_column :participants, :drawing, :boolean
  end
end
