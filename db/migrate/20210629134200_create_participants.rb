class CreateParticipants < ActiveRecord::Migration[6.1]
  def change
    create_table :participants do |t|
      t.string :email
      t.string :first_name

      t.timestamps
    end
  end
end
