class User < ActiveRecord::Base
  has_many :attendances
  belongs_to :team  
end
