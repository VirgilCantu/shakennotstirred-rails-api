class CocktailsController < ApplicationController
  
  def index
    cocktails = Cocktail.all

    render json: CocktailSerializer.new(cocktails).to_serialized_json
  end

  
  def show
    cocktail = Cocktail.find_by(id: params[:id])
    if cocktail
      render json: CocktailSerializer.new(cocktail).to_serialized_json
    else 
      render json: { message: 'Cocktail not found' }
    end
  end

  
  def create
    cocktail = Cocktail.new(cocktail_params)

    if cocktail.save
      render json: cocktail, status: :created, location: cocktail
    else
      render json: cocktail.errors, status: :unprocessable_entity
    end
  end

  
  def update
    cocktail = Cocktail.find_by(id: params[:id])
    if cocktail.update(cocktail_params)
      render json: cocktail
    else
      render json: cocktail.errors, status: :unprocessable_entity
    end
  end

  
  def destroy
    cocktail = Cocktail.find_by(id: params[:id])
    cocktail.users.destroy_all
    cocktail.ingredients.destroy_all
    cocktail.destroy
  end

  private

    def cocktail_params
      params.require(:cocktail).permit(:name, :glassware, :ice, :image, :origin, :preparation)
    end
end
