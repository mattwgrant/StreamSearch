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
    get_response url
  end

  def self.lookup id
    album = "#{@@url}/v1/artists/#{id}/albums/top?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl"
    get_response album
  end

  def self.get_response url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed = JSON.parse(response)
    # parsed["results"]
    # byebug



  end
  private_class_method :get_response
end