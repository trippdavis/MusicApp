class AlbumsController < ApplicationController
  def new
    if params[:band_id]
      @album = Album.new(band_id: params[:band_id])
    end
    @bands = Band.all

    render :new
  end

  def create
    @album = Album.new(album_params)
    @bands = Band.all

    if @album.save
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      render :new
    end
  end

  def show
    @album = Album.find(params[:id])
    @band = Band.find(@album.band_id)

    render :show
  end

  def edit
    @album = Album.find(params[:id])
    @bands = Band.all

    render :edit
  end

  def update
    @album = Album.find(params[:id])
    @album.update(album_params)
    @bands = Band.all

    if @album.save
      redirect_to album_url(@album)
    else
      flash.now[:errors] = @album.errors.full_messages
      render :edit
    end
  end

  def destroy
  end

  private

  def album_params
    params.require(:album).permit(:title, :band_id, :recording_type)
  end
end
