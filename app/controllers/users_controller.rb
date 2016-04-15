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
    @results = Apis::Itunes.search(params[:query])
    @rhapResults = Apis::Rhapsody.search(params[:query])
    @spotResults = Apis::Spotify.search(params[:query])

    render "index"
  end




  def show

  end
end
