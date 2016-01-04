class AddFoodPartsToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :food_parts, :text
  end
end
