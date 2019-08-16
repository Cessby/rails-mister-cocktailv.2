class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def new           # GET /cocktails/new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)
    if @cocktail.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def show          # GET /cocktails/:id
    @cocktail = Cocktail.find(params[:id])
    @dose = Dose.new
  end

  def destroy           # GET /cocktails/ne
    @cocktail = Cocktail.find(params[:id])
    @cocktail.destroy
    redirect_to cocktails_path
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end
end
