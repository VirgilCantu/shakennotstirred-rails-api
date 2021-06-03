class IngredientsController < ApplicationController

  def index
    ingredients = Ingredient.all

    render json: ingredients
  end

  def show
    ingredient = Ingredient.find(params[:id])
    render json: ingredient
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
    ingredient = Ingredient.find(params[:id])
    if ingredient.update(ingredient_params)
      render json: ingredient
    else
      render json: ingredient.errors, status: :unprocessable_entity
    end
  end

  def destroy
    ingredient = Ingredient.find(params[:id])
    ingredient.destroy
  end

  private
    
    def ingredient_params
      params.require(:ingredient).permit(:name, :category, :subcategory)
    end
end
