class AddAttendanceIdToIncident < ActiveRecord::Migration
  def change
    add_column :incidents, :attendance_id, :integer
  end
end
