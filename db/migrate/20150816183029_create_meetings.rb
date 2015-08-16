class CreateMeetings < ActiveRecord::Migration
  def change
    create_table :meetings do |t|
      t.string :room_name
      t.text :description
      t.date :date
      t.time :time_in
      t.time :time_out

      t.timestamps null: false
    end
  end
end
