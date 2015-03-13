class TracksController < ApplicationController
  def new
    @track = Track.new
    if params[:album_id]
      @track.album_id = params[:album_id]
    end
    @albums = Album.all
    render :new
  end

  def create
    @track = Track.new(track_params)

    if @track.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      @albums = Album.all
      render :new
    end
  end

  def show
    @track = Track.find(params[:id])
    @album = Album.find(@track.album_id)

    render :show
  end

  def edit
    @track = Track.find(params[:id])
    @albums = Album.all

    render :edit
  end

  def update
    @track = Track.find(params[:id])
    @track.update(track_params)

    if @track.save
      redirect_to track_url(@track)
    else
      flash.now[:errors] = @track.errors.full_messages
      @albums = Album.all

      render :edit
    end
  end

  def destroy
    @track = Track.find(params[:id])
    @album = Album.find(@track.album_id)
    @track.destroy
    redirect_to album_url(@album)
  end

  private

  def track_params
    params.require(:track).permit(:title, :album_id, :track_type, :lyrics)
  end
end
