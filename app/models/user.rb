class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :attendances
  belongs_to :team
  has_many :incidents

  self.inheritance_column = :type

  def self.types
    %w(Agent TeamLeader)
  end
end
