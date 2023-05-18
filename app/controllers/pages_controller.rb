require 'httparty'  #this may cause an error
require 'dotenv/load'


class PagesController < ApplicationController
  def home
	@idiot = "hello" #testing passing a var!
    #response = HTTParty.get('https://uselessfacts.jsph.pl/random.json?language=en')

	#response = HTTParty.get('https://api.quotable.io/quotes/random')
	#response = HTTParty.get('https://api.quotable.io/quotes/random/?/id/content')
	
    #@random = JSON.parse(response.body)
    #@randomfact = @random['text']
	
	#@random = JSON.parse(response.body)
	#@randomfact = @random['content']
	#@randomfact = @random
	
	response = HTTParty.get('https://v2.jokeapi.dev/joke/Programming?blacklistFlags=racist,sexist,explicit')
	@random = JSON.parse(response.body)
	#@randomfact = @random
	@randomfact = @random['setup']
	@randomfact2 = @random['delivery']
 
  end

  def about
  end

  def other
  end

end

#decorator pattern - not working
class PagesSidebar < SimpleDelegator
  def to_partial_path


    #response2 = HTTParty.get('https://uselessfacts.jsph.pl/random.json?language=en')
    #random1 = JSON.parse(response2.body)
    #@randomfact = @random1['text']
    #@rsource = @random1['source']
	

  end
end
#PagesSidebar.new(PagesController.new).to_partial_path #=> "layouts/sidebar"

