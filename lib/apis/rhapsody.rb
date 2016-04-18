require 'net/http'
require 'json'

class Apis::Rhapsody
  @@url = "https://api.rhapsody.com"
  def self.search query, type = "", *args
    url = "#{@@url}/v1/search/typeahead?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl&q=#{query}&type=artist"
    album = "#{@@url}/v1/search/typeahead?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl&q=#{query}&type=album"
    song = "#{@@url}/v1/search/typeahead?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl&q=#{query}&type=trackf"
    # get_response url
    # get_response album
    get_response url
  end

  def self.lookup id
    albums = "#{@@url}/artists/#{id}/albums/top?limit=15"
    get_response albums
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