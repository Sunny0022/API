require 'rubygems'
require 'httparty'

class PostApi
  include HTTParty
  def initialize

     @url = "https://reqres.in/api/users"

  end


  def get
    response = self.class.post(@url, body: {
        "name": "morpheus",
        "job": "leader"
    })

    response.message

  end

  def get_input

    puts 'Hello World'

  end

end
