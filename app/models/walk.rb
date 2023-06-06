class Walk < ApplicationRecord
	validates :name, 
			  :presence => true, 
			  length: {minimum: 3, message: "must have at least 3 charachters"}
			  
	has_many :notes
end
