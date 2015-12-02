class CreateAttendances < ActiveRecord::Migration
  def change
    create_table :attendances do |t|
      t.datetime :day
      t.boolean :available

      t.timestamps null: false
    end
  end
end
