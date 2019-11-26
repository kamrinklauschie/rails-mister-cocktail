class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktails.all
  end

  def show
    @cocktail
  end

  def new
    @cocktail = Book.new
  end

  def create
    @cocktail = Book.create(cocktail_params)
    @cocktail.save
  end

  def edit
    @cocktail
  end

  def update
    @cocktail.update(cocktail_params)
  end

  def destroy
    @cocktail.destroy
  end

  private

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end

  def cocktail_params
    params[:cocktail].permit(:name)
end
