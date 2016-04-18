require 'net/http'
require 'json'

class Apis::Itunes
  @@url = "https://itunes.apple.com"
  def self.search term, entity = "", *args
    url = "#{@@url}/search?term=#{term}&entity=musicArtist"
    album = "#{@@url}/search?term=#{term}&entity=album"
    # album = 
    song = "#{@@url}/search?term=#{term}&entity=song"
    
    get_response url
    # get_response album
    # get_response song
  end

  def self.get_response url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed = JSON.parse(response)
    parsed["results"]



  end
  private_class_method :get_response
end