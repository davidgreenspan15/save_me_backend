class StocksController < ApplicationController
  def index


    stocks = Stock.all.filter do |stock|

      stock.risk_level == request.headers["Authorization"].to_i
    end
    render json: stocks
  end

  def show
  end
end
