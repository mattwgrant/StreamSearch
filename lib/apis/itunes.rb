require 'net/http'
require 'json'


class Apis::Itunes
  @@url = "https://itunes.apple.com"
  def self.search term, entity = "", *args
    url = "#{@@url}/search?term=#{term}&entity=musicArtist"
    album = "#{@@url}/search?term=#{term}&entity=album"
    song = "#{@@url}/search?term=#{term}&entity=song"
    
    get_response url
  
  end

  def self.lookup artistId
    # term, key = "id", *args
    album = "#{@@url}/lookup?id=#{artistId}&entity=album"
    get_response album
  end

  def self.find collectionId
    songs = "#{@@url}/lookup?id=#{collectionId}&entity=song"
    get_response songs
  end

  def self.get_response url
    uri = URI(url)
    response = Net::HTTP.get(uri)
    parsed = JSON.parse(response)
    parsed["results"]



  end
  private_class_method :get_response
end