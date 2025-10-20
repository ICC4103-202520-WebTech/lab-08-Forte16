class RecipesController < ApplicationController
  before_action :authenticate_user!
  load_and_authorize_resource

  # GET /recipes
  def index
    # @recipes is automatically loaded by CanCanCan
  end

  # GET /recipes/1
  def show
    # @recipe is automatically loaded by CanCanCan
  end

  # GET /recipes/new
  def new
    # @recipe is automatically loaded by CanCanCan
  end

  # POST /recipes
  def create
    # @recipe is automatically built by CanCanCan with the correct user_id
    if @recipe.save
      redirect_to @recipe, notice: 'Recipe was successfully created.'
    else
      render :new
    end
  end

  # GET /recipes/1/edit
  def edit
    # @recipe is automatically loaded by CanCanCan
  end

  # PATCH/PUT /recipes/1
  def update
    if @recipe.update(recipe_params)
      redirect_to @recipe, notice: 'Recipe was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /recipes/1
  def destroy
    @recipe.destroy
    redirect_to recipes_url, notice: 'Recipe was successfully destroyed.'
  end

  private

  # Only allow a list of trusted parameters through.
  def recipe_params
    params.require(:recipe).permit(:title, :cook_time, :difficulty, :instructions)
  end
end