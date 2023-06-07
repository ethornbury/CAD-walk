class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
		 
 
  has_many :notes
  
  #before_create :create_profile
	
	
  
  
  #def create_profile
  #  profile = Profile.new
   # self.id = profile.id
	
	#profile.save
	#puts("saved")

    # Maybe check if profile gets created and raise an error 
    #  or provide some kind of error handling
 # end
  
  # 1:1 relationship with profile to be implemented 
  has_one :profile
  accepts_nested_attributes_for :profile
  
  #def profile
#	super || build_profile
  #end
  
end
