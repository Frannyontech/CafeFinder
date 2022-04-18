class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  
  has_many :cafes
  has_many :reviews
  validates :name, presence: true
  has_one_attached :avatar, dependent: :destroy
  enum role: [ :Admin, :Member ]
  before_create :user_default

  

  def user_default
    self.role = 0
  end

end
