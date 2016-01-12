class User < ActiveRecord::Base

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :attendances
  belongs_to :team

  self.inheritance_column = :type

  def admin?
    type == "TeamLeader"
  end

end
