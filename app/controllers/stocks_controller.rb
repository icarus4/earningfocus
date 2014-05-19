class StocksController < ApplicationController
  def show
    #@stock = Stock.find_by(symbol: params[:symbol].upcase)
    @symbol = params[:symbol].upcase
  end
end
