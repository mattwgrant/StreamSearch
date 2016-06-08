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

  def search_songs
    @spotResults = Apis::Spotify.search(params[:query])
    @results = Apis::Itunes.search(params[:query])
    @rhapResults = Apis::Rhapsody.search(params[:query])

    render "index"
  end

  def search_albums
    @spotResults = Apis::Spotify.search(params[:query])
    @results = Apis::Itunes.search(params[:query])
    @rhapResults = Apis::Rhapsody.search(params[:query])

    render "index"
  end

  def spotify_albums
    # @spot_artist_id = params[:id]
    @spotAlbums = Apis::Spotify.lookup(params[:id])

    respond_to do |format|
      format.js { render 'spotify_albums' }
    end
  end

  def apple_albums
    # @apple_artist_id = params[:id]
    @appleAlbums = Apis::Itunes.lookup(params[:id])

    respond_to do |format|
      format.js { render 'apple_albums' }
    end
  end

  def rhapsody_albums
    # @rhap_artist_id = params[:id]
    @rhapAlbums = Apis::Rhapsody.lookup(params[:id])

    respond_to do |format|
      format.js { render 'rhapsody_albums' }
    end
  end

  def spotify_songs
    @spot_album_id = params[:id]
    @spotSongs = Apis::Spotify.find(params[:id])

    respond_to do |format|
      format.js { render 'spotify_songs' }
    end
  end

  def apple_songs
    @apple_album_id = params[:id]
    @appleSongs = Apis::Itunes.find(params[:id])

    respond_to do |format|
      format.js { render 'apple_songs' }
    end
  end

  def rhapsody_songs
    @rhap_album_id = params[:id]
    @rhapSongs = Apis::Rhapsody.find(params[:id])

    respond_to do |format|
      format.js { render 'rhapsody_songs' }
    end
  end

  # def show
  #   @spotAlbums = Apis::Spotify.lookup(params[:id])
  #   @appleAlbums = Apis::Itunes.lookup(params[:id])
  #   @rhapAlbums = Apis::Rhapsody.lookup(params[:id])
  # end

  # def songs
  #   @spotSongs = Apis::Spotify.find(params[:id])
  #   @appleSongs = Apis::Itunes.find(params[:id])
  #   @rhapSongs = Apis::Rhapsody.find(params[:id])
  # end
end
