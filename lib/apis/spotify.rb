require 'net/http'
require 'json'

class Apis::Spotify
  @@url = "https://api.spotify.com"

  def self.search query, type = "", *args
    url = "#{@@url}/v1/search?query=#{query}&offset=0&limit=20&type=artist"
    # album = "#{@@url}/v1/search?query=#{query}&offset=0&limit=20&type=album"
    song = "#{@@url}/v1/search?query=#{query}&offset=0&limit=20&type=track"
    get_response url
  end

  def self.lookup id
    # term, key = "id", *args
    album = "#{@@url}/v1/artists/#{id}/albums"
    get_response album
  end

  def self.get_response url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed = JSON.parse(response)
     # return parsed["artists"]
    # byebug



  end
  private_class_method :get_response
end