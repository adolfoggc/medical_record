class MedicationActiveIngredient < ApplicationRecord
  belongs_to :medication
  belongs_to :active_ingredient
end
