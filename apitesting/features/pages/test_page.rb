require 'rubygems'
require 'httparty'

class Topics_page
  include HTTParty
  # include HTTParty

  # base_uri 'https://reqres.in'
  def initialize

    @url = 'https://reqres.in/api/users/2'
    @url2 = 'https://reqres.in/api/users?page=2'
  end

  def get

    res = self.class.get(@url)
    res

  end

  def get_code

    res = self.class.get(@url2)
    res.code
  end

  def get_output
    puts 'Hello World'

  end

end

