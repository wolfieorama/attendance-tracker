class User < ActiveRecord::Base

  scope :agent, -> { where(type: "Agent") }
  scope :team_leader, -> { where(type: "TeamLeader") }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :attendances
  belongs_to :team

  self.inheritance_column = :type

  def self.types
    %w(Agent TeamLeader)
  end

  def admin?
    type == "TeamLeader"
  end
end
