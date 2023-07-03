class ActiveIngredientsController < ApplicationController
  before_action :set_active_ingredient, only: %i[ show edit update destroy ]

  # GET /active_ingredients or /active_ingredients.json
  def index
    @active_ingredients = ActiveIngredient.all
  end

  # GET /active_ingredients/1 or /active_ingredients/1.json
  def show
  end

  # GET /active_ingredients/new
  def new
    @active_ingredient = ActiveIngredient.new
  end

  # GET /active_ingredients/1/edit
  def edit
  end

  # POST /active_ingredients or /active_ingredients.json
  def create
    @active_ingredient = ActiveIngredient.new(active_ingredient_params)

    respond_to do |format|
      if @active_ingredient.save
        format.html { redirect_to active_ingredient_url(@active_ingredient), notice: "Active ingredient was successfully created." }
        format.json { render :show, status: :created, location: @active_ingredient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @active_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /active_ingredients/1 or /active_ingredients/1.json
  def update
    respond_to do |format|
      if @active_ingredient.update(active_ingredient_params)
        format.html { redirect_to active_ingredient_url(@active_ingredient), notice: "Active ingredient was successfully updated." }
        format.json { render :show, status: :ok, location: @active_ingredient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @active_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /active_ingredients/1 or /active_ingredients/1.json
  def destroy
    @active_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to active_ingredients_url, notice: "Active ingredient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_active_ingredient
      @active_ingredient = ActiveIngredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def active_ingredient_params
      params.require(:active_ingredient).permit(:name, :common_use)
    end
end
