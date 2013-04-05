class CreateConferenceRooms < ActiveRecord::Migration
  def change
    create_table :conference_rooms do |t|
      t.integer :building_id
      t.string :name
      t.integer :room
      t.integer :floor
      t.string :phone
      t.integer :max
      t.boolean :tv
      t.boolean :vtc
      t.boolean :whiteboard

      t.timestamps
    end
  end
end
