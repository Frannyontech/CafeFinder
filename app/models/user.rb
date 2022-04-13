class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :cafes

  enum role: [ :Admin, :Member ]
  before_create :user_default

  def user_default
    self.role = 0
  end
end
