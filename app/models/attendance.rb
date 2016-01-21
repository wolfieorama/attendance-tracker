class Attendance < ActiveRecord::Base
  belongs_to :user
  has_many :incidents
end
