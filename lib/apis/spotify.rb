require 'net/http'
require 'json'

class Apis::Spotify
  @@url = "https://api.spotify.com"
  def self.search query, type = "", *args
    url = "#{@@url}/v1/search?query=#{query}&offset=0&limit=20&type=artist"
    album = "#{@@url}/v1/search?query=#{query}&offset=0&limit=20&type=album"
    song = "#{@@url}/v1/search?query=#{query}&offset=0&limit=20&type=track"
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
     # return parsed["artists"]
    # byebug



  end
  private_class_method :get_response
end