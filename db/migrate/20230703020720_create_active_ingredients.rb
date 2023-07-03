class CreateActiveIngredients < ActiveRecord::Migration[7.0]
  def change
    create_table :active_ingredients do |t|
      t.string :name
      t.string :common_use

      t.timestamps
    end
  end
end
