class BasicWalk 
	def initialize(difficulty, duration)
		@difficulty = difficulty
		@duration = duration
		#@desc = desc	
	end
	
	def duration
		return @duration
	end
	
	def difficulty
		return @difficulty
	end
	
	#def desc
	#	return @desc
	#end

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
		end
	end
	
end