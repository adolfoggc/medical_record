class MedicationActiveIngredientsController < ApplicationController
  before_action :set_medication_active_ingredient, only: %i[ show edit update destroy ]

  # GET /medication_active_ingredients or /medication_active_ingredients.json
  def index
    @medication_active_ingredients = MedicationActiveIngredient.all
  end

  # GET /medication_active_ingredients/1 or /medication_active_ingredients/1.json
  def show
  end

  # GET /medication_active_ingredients/new
  def new
    @medication_active_ingredient = MedicationActiveIngredient.new
  end

  # GET /medication_active_ingredients/1/edit
  def edit
  end

  # POST /medication_active_ingredients or /medication_active_ingredients.json
  def create
    @medication_active_ingredient = MedicationActiveIngredient.new(medication_active_ingredient_params)

    respond_to do |format|
      if @medication_active_ingredient.save
        format.html { redirect_to medication_active_ingredient_url(@medication_active_ingredient), notice: "Medication active ingredient was successfully created." }
        format.json { render :show, status: :created, location: @medication_active_ingredient }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @medication_active_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /medication_active_ingredients/1 or /medication_active_ingredients/1.json
  def update
    respond_to do |format|
      if @medication_active_ingredient.update(medication_active_ingredient_params)
        format.html { redirect_to medication_active_ingredient_url(@medication_active_ingredient), notice: "Medication active ingredient was successfully updated." }
        format.json { render :show, status: :ok, location: @medication_active_ingredient }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @medication_active_ingredient.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /medication_active_ingredients/1 or /medication_active_ingredients/1.json
  def destroy
    @medication_active_ingredient.destroy

    respond_to do |format|
      format.html { redirect_to medication_active_ingredients_url, notice: "Medication active ingredient was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_medication_active_ingredient
      @medication_active_ingredient = MedicationActiveIngredient.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def medication_active_ingredient_params
      params.require(:medication_active_ingredient).permit(:medication_id, :active_ingredient_id, :miligrams)
    end
end
