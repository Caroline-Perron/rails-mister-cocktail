class DosesController < ApplicationController
  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else render :new
    end
  end

  def new
    @dose = Dose.new
    @cocktail = Cocktail.find(params[:cocktail_id]) #//url chemin
  end

  private

  def dose_params
    params.require(:dose).permit(:description, :ingredient_id) # car les ingredients sont dans un menu deroulant
  end
end
