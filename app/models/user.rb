class User < ApplicationRecord
  has_many :books
  validates :name, presence: true
  validates :name, length: { in: 5..50 } 
 

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
