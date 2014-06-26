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

  def edit
    @song = Song.find(params[:id])
  end

  # SongsController#update method
  def update
    # Get the song to update
    @song = Song.find(params[:id])

    # Using strong params update this song
    # Song#update method
    if @song.update(song_params)
      redirect_to @song, notice: "You have updated the #{@song.title}"
    else
      # No worky, try again, show me the form you.
      render :edit
    end
  end

  private

  # Define which params are allowed to be used to create a song
  def song_params
    params.require(:song).permit([:title, :artist, :duration, :price])
  end
end
