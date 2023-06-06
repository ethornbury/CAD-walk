class Note < ApplicationRecord
	validates :title, 
			  :presence => true, 
			  length: {minimum: 3, message: "must have at least 3 charachters"}
			  
			  
	belongs_to :user
end
