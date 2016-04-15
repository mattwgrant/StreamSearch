require 'net/http'
require 'json'

class Apis::Rhapsody
  @@url = "https://api.rhapsody.com"
  def self.search query, type = "", *args
    url = "#{@@url}/v1/search/typeahead?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl&q=#{query}&type=artist"
    album = "#{@@url}/v1/search/typeahead?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl&q=#{query}&type=album"
    song = "#{@@url}/v1/search/typeahead?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl&q=#{query}&type=track"
    # get_response url
    # get_response album
    get_response song
  end

  # def self.lookup term, key = "id", *args
  #   url = "#{@@url}search?#{key}=#{term}"
  #   get_response url
  # end

  def self.get_response url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed = JSON.parse(response)
    # parsed["results"]
    # byebug



  end
  private_class_method :get_response
end