require 'httparty'  #this may cause an error
require 'dotenv/load'


class PagesController < ApplicationController
  def home
	@idiot = "hello" #testing passing a var!
    response = HTTParty.get('https://uselessfacts.jsph.pl/random.json?language=en')

	#response = HTTParty.get('https://api.quotable.io/quotes/random')
    @random = JSON.parse(response.body)
    @randomfact = @random['text']
	#randomQ = @random['content']
    #rsource = @random['source']
	#@source = @random['author'] 
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

