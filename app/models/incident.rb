class Incident < ActiveRecord::Base
  belongs_to :users
  belongs_to :attendances
end
