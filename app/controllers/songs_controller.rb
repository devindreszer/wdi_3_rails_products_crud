class SongsController < ApplicationController
  def index
    @songs = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    song = Song.new(song_params)
    if song.save
      redirect_to songs_path
    else
      render :new
    end
  end

  private

  # Define which params are allowed to be used to create a song
  def song_params
    params.require(:song).permit([:title, :artist, :duration, :price])
  end
end
