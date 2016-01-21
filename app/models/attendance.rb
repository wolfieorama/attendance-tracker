class Attendance < ActiveRecord::Base
  belongs_to :user
  has_many :incidents

  def self.grand_hours
    final_hours = 8 + Attendance.incident.duration
  end
end
