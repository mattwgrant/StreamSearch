require "#{Rails.root}/lib/apis/itunes"
require "#{Rails.root}/lib/apis/spotify"
require "#{Rails.root}/lib/apis/rhapsody"



class UsersController < ApplicationController

  def index
  
  end

  def search
    @spotResults = Apis::Spotify.search(params[:query])
    @results = Apis::Itunes.search(params[:query])
    @rhapResults = Apis::Rhapsody.search(params[:query])
    

    render "index"
  end


  def show
    @spotAlbums = Apis::Spotify.lookup(params[:id])
    # @itunesAlbums = Apis::Itunes.lookup(params[:id])
    # @rhapAlbums = Apis::Rhapsody.lookup(params[:id])
    
  end
end
