class AlbumsController < ApplicationController

  # def index
  #   artist_id = params[:artist_id]
  #   albums = artist_id.nil? ? Album.all() : Album.where(artist_id = params[:id])
  #   render :json => albums
  # end

  def index
    albums = Album.all() 
    render :json => albums.as_json(include: [:stocks], except: [:created_at, :updated_at])
  end

  def show
    album = Album.find(params[:id])
    render :json => album.as_json(except: [:created_at, :updated_at])
  end

  def create
    album = Album.create(album_params)
    render :json => album
  end

  def update
    album = Album.find(params[:id])
    if album.update_attributes(album_params)
      render json: album
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    album = Album.find(params[:id])
    if album.destroy!
        render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

  private
  def album_params
    params.require(:album).permit([:name, :genre, :artist_id])
  end
  
end