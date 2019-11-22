class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def create
    @cocktails = Cocktail.new(name: params[:name])
    @cocktails.save
  end

  def show
    @cocktail = Cocktail.find(params[:id])
  end

  def edit
    @cocktails = Cocktail.find(params[:id])
  end
  # peut -etre pas ca

  # def update
  #   @cocktails = Cocktail.find(params[:id])
  #   @cocktail.update(params[:cocktail])
  # end

  # def destroy
  #   @cocktails = Cocktail.find(params[:id])
  #   @cocktails.destroy
  # end
end
