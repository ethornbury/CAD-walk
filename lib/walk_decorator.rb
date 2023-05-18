class BasicWalk 
	def initialize(difficulty, duration)
		@difficulty = difficulty
		@duration = duration
	
	end
	
	def duration
		return @duration
	end
	
	def difficulty
		return @difficulty
	end

end

# decorator class -- this serves as the superclass for all the concrete decorators
# the base/super class decorator (i.e. no actual decoration yet), 
# each concrete decorator (i.e. subclass) will add its own decoration
#class DecoratedWalk < SimpleDelegator
class DecoratedWalk < BasicWalk
	def initialize(basic_walk)
		@basic_walk = basic_walk
		 super(@basic_walk.difficulty , @basic_walk.duration)
		 
	end
	
	def tough
		if duration > 5 and difficulty > 3
			return " This is a tough walk."
		elsif duration < 3 and difficulty < 3
			return " This is an easy walk."
		end
	end
	
end