class BeersController < ApplicationController

  def about
    render 'about'
  end

  def index
    @beers = Beer.all
  end

  def show
    @beer = Beer.find(params[:id])
  end

  def new
    @beer = Beer.new
  end

  def create
    @beer = Beer.new(beer_params)
    if @beer.save
      redirect_to beers_path(@beer)
    else
      render :new
    end
  end

  def edit
    @beer = Beer.find(params[:id])
  end

  def update
    @beer = Beer.find(params[:id])
    if @beer.update(beer_params)
      redirect_to beer_path(@beer)
    else
      render :edit
    end
  end

  def destroy
    Beer.find(params[:id]).destroy
    redirect_to beers_url
  end

  private
  # def load_beer
  #   @beer = Beer.find(params[:id])
  # end

  def beer_params
    params.require(:beer).permit(:name, :description, :abv, :location)
  end

end
