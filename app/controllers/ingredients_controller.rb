class IngredientsController < ApplicationController

  def index
    ingredients = Ingredient.all

    render json: ingredients
  end

  def show
    ingredient = Ingredient.find_by(id: params[:id])
    if ingredient
      render json: ingredient
    else
      render json: { message: 'Ingredient not found' }
    end
  end

  def create
    ingredient = Ingredient.new(ingredient_params)

    if ingredient.save
      render json: ingredient, status: :created, location: ingredient
    else
      render json: ingredient.errors, status: :unprocessable_entity
    end
  end

  def update
    ingredient = Ingredient.find_by(id: params[:id])
    if ingredient.update(ingredient_params)
      render json: ingredient
    else
      render json: ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    ingredient = Ingredient.find_by(id: params[:id])
    ingredient.destroy
  end

  private
    
    def ingredient_params
      params.require(:ingredient).permit(:name, :category, :subcategory)
    end
end
