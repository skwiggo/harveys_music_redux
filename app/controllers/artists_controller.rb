class ArtistsController < ApplicationController

  def index
    artists = Artist.all()
    render :json => artists.as_json(include: [:albums => {include: [:stocks]}], except: [:created_at, :updated_at])
  end

  def show
    artist = Artist.find(params[:id])
    render :json => artist
  end

  def create
    artist = Artist.create(artist_params)
    render :json => artist
  end

  def update
    artist = Artist.find(params[:id])
    if artist.update_attributes(artist_params)
      render json: artist
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    artist = Artist.find(params[:id])
    if artist.destroy!
        render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

  private
  def artist_params
    params.require(:artist).permit([:name, :genre])
  end
end