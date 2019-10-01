class HomeController < ApplicationController
  def index
    if params[:ticker] == ""
      @nothing =  "Hey! you forgot to enter a symbol"  
    elsif params[:ticker]
      @stock = StockQuote::Stock.quote(params[:ticker])
      if !@stock
          @error = "Hey that stock symobl does not exsist"
      end
    end
  end
  
  def about
  end
end
