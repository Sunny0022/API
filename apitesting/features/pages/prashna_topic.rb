require 'rubygems'
require 'rest-client'

class Topics


  def initialize

    @url = 'http://rahul.domain4now.com/api/topics/ruby.json'
    @url2 = 'http://rahul.domain4now.com/api/topics/Selenium.json'
    @url3 = 'http://rahul.domain4now.com/api/feed.json?token=2sEDabx0MxquGQwsSeN22g'

  end
  def get

    res = RestClient.get(@url)
    res.code

  end

  def get_new

    res = RestClient.get(@url2)
    res.body
  end


  def followers

    res = RestClient.get(@url3)
    res.headers
  end
end
