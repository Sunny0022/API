require 'rubygems'
require 'httparty'

class PutApi
  include HTTParty
  def initialize

    @url = "https://reqres.in/api/users/2"
  end


  def get
    response = self.class.put(@url, body: {     "name": "morpheus",    "job": "zion resident"})
    response.code

  end

  def get_input

    puts 'Hello World'

  end

end
