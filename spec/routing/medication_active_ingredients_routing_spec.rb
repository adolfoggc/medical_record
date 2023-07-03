require "rails_helper"

RSpec.describe MedicationActiveIngredientsController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/medication_active_ingredients").to route_to("medication_active_ingredients#index")
    end

    it "routes to #new" do
      expect(get: "/medication_active_ingredients/new").to route_to("medication_active_ingredients#new")
    end

    it "routes to #show" do
      expect(get: "/medication_active_ingredients/1").to route_to("medication_active_ingredients#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/medication_active_ingredients/1/edit").to route_to("medication_active_ingredients#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/medication_active_ingredients").to route_to("medication_active_ingredients#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/medication_active_ingredients/1").to route_to("medication_active_ingredients#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/medication_active_ingredients/1").to route_to("medication_active_ingredients#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/medication_active_ingredients/1").to route_to("medication_active_ingredients#destroy", id: "1")
    end
  end
end
