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
    album = "#{@@url}/v1/artists/Art.#{id}/albums/top?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl"
    get_response album

    # songs = "#{@@url}/v1/albums/Alb.#{id}/tracks?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl"
    # get_response songs
    # byebug
  end

  def self.find id
    songs = "#{@@url}/v1/albums/Alb.#{id}/tracks?apikey=OTNkNjM2YzAtZGIxMC00ZTg4LWJjNjItMWJhOWZiYTk4MTVl"
    get_response songs
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