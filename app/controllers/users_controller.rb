require "#{Rails.root}/lib/apis/itunes"
require "#{Rails.root}/lib/apis/spotify"
require "#{Rails.root}/lib/apis/rhapsody"



class UsersController < ApplicationController

  def index
   #  if params[:artist_name]
   #    @artist = RSpotify::Artist.search(params[:artist_name])
   # # else
   #  #   redirect_to root_path 
   #  end
  end

  def search
    @spotResults = Apis::Spotify.search(params[:query])
    @results = Apis::Itunes.search(params[:query])
    @rhapResults = Apis::Rhapsody.search(params[:query])
    

    render "index"
  end


  def show
    @spotAlbums = Apis::Spotify.lookup(params[:id])
    #@appleAlbums = Apis::Itunes.lookup(params[:id])
    #@rhapAlbums = Apis::Rhapsody.lookup(params[:id])
  end

  def songs
    @spotSongs = Apis::Spotify.find(params[:id])
    #@appleSongs = Apis::Itunes.find(params[:id])
    #@rhapSongs = Apis::Rhapsody.find(params[:id])
  end
end
