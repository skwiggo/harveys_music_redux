class StocksController < ApplicationController

  def index
    stocks = Stock.all()
    render :json => stocks.as_json(include: [:album], except: [:created_at, :updated_at])
  end

  def show
    stock = Stock.find(params[:id])
    render :json => stock.as_json
  end

  def create
    stock = Stock.create(stock_params)
    render :json => stock
  end

  def update
    stock = Stock.find(params[:id])
    if stock.update_attributes(stock_params)
      render json: stock
    else
      render json: {status: :update_failed}
    end
  end

  def destroy
    stock = Stock.find(params[:id])
    if stock.destroy!
        render json: {status: :success}
    else
      render json: {status: :delete_failed}
    end
  end

  private
  def stock_params
    params.require(:stock).permit([:level, :price, :album_id])
  end

  
end