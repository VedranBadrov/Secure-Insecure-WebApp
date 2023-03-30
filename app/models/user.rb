class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  validates :email, :password, presence: true
  validates :password, length: { minimum: 8 }

  enum role: [:USER, :MODERATOR, :ADMIN]
  after_initialize :set_default_role, :if => :new_record?
  def set_default_role
    self.role ||= :user
  end
  
end

