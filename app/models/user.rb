class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
		 
 
  has_many :notes
  
  # 1:1 relationship with profile 
  #has_one :profiles
end
