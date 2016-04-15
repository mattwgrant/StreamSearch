require 'net/http'
require 'json'

class Spotify

  def self.spotify_api_response
    url = URI("https://api.spotify.com/v1/search?term=michael+jackson&entity=song")
    Net::HTTP.get(url)
  end

  def self.search(stuff)
    url = URI("https://api.spotify.com/v1/search?term='#{stuff}'")
    Net::HTTP.get(url)
  end

end

