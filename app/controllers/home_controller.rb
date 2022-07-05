class HomeController < ApplicationController
  def intialize
    @api = StockQuote::Stock.new(api_key: 'pk_232ad8ae316a4789897cb41f23cdc5b6')
  end
  def index
        query = params[:query]
        if(query != "")
          @stock = StockQuote::Stock.quote(query)
          if(!@stock)
              @nothing="This stock is not exist"
          end
        else
          @nothing = "Stock name should not be empty"
        end
  end

  def aboutme
  end

  def search
    puts "Hey everyone"
  end
end
