#check the models folder>walk_observer.rb
#check the walk controller
#check the lib folder

require 'singleton'
class MyLogger
    include Singleton
    def initialize
        @log = File.open("the_log.txt", "a")
    end

    #though test runs neither works in app
    def logInformation(information)
        @log.puts("-----start-----")
        @log.puts(information)
        @log.puts("-----end-----")
        @log.flush
    end
end