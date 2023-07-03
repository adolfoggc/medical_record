class CreateMedicationActiveIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :medication_active_ingredients do |t|
      t.references :medication, null: false, foreign_key: true
      t.references :active_ingredient, null: false, foreign_key: true
      t.string :miligrams

      t.timestamps
    end
  end
end
