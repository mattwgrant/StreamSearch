require 'net/http'
require 'json'

class Google
  @@url = "https://play.google.com/"
  def self.search query, type = "", *args
    url = "#{@@url}/store/search?q=#{query}&c=artist"
    get_response url
  end

  # def self.lookup term, key = "id", *args
  #   url = "#{@@url}search?#{key}=#{term}"
  #   get_response url
  # end

  def self.get_response url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed = JSON.parse(response)
     # return parsed["artists"]
    # byebug



  end
  private_class_method :get_response
end