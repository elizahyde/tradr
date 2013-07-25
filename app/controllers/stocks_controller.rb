class StocksController < ApplicationController
skip_before_filter :require_login, :only => [:index]

# GET /stocks
# GET /stocks.json

def refresh_table
  @stocks = current_user.stocks
end

def index
  @user = current_user
  @stocks = Stock.all

  @stocks = Ystock::Google.find([symbol])


  respond_to do |format|
    format.html # index.html.erb
    format.json { render json: @stocks }
  end
end

# GET /stocks/1
# GET /stocks/1.json
def show
  @stock = Stock.find(params[:id])

  respond_to do |format|
    format.html # show.html.erb
    format.json { render json: @stock }
  end
end

# GET /stocks/new
# GET /stocks/new.json
def new
  @stock = Stock.new
  @stock = current_user.stocks.build(params[:stock])
  @stocks = current_user.stocks

  respond_to do |format|
    format.html # new.html.erb
    format.js
  end
end

# GET /stocks/1/edit
def edit
  @stock = Stock.find(params[:id])
end

# POST /stocks
# POST /stocks.json
def create
  @stock = current_user.stocks.build(params[:stock])

  respond_to do |format|
    if @stock.save
      @stocks = current_user.stocks

      format.html { redirect_to(:stocks, :notice => 'stock was successfully created.') }
      format.js
    else
      format.html { render action: "new" }
      format.js
    end
  end
end

# PUT /stocks/1
# PUT /stocks/1.json
def update
  @stock = Stock.find(params[:id])

  respond_to do |format|
    if @stock.update_attributes(params[:stock])
      format.html { redirect_to @stock, notice: 'stock was successfully updated.' }
      format.json { head :no_content }
    else
      format.html { render action: "edit" }
      format.json { render json: @stock.errors, status: :unprocessable_entity }
    end
  end
end

# DELETE /stocks/1
# DELETE /stocks/1.json
def destroy
  @stock = Stock.find(params[:id])
  @stock.destroy

  respond_to do |format|
    format.html { redirect_to stocks_url }
    format.json { head :no_content }
  end
end
end
