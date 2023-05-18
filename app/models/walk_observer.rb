#check the models folder>walk_observer.rb
#check the walk controller
#check the lib folder

require 'my_logger'

class WalkObserver < ActiveRecord::Observer
    
    def after_update(record)
        # use the MyLogger instance method to retrieve 
		#the single instance/object of the class
        @logger = MyLogger.instance
        # use the logger to log/record a message about the updated car
        @logger.logInformation("WalkObserver Demo:")
        @logger.logInformation("The walk of #{record.name} #{record.desc}
        has been updated.")
        
    end
    
end