class CreateJoinTableCategoryRecipe < ActiveRecord::Migration
  def change
    create_join_table :categories, :recipes do |t|
      # t.index [:category_id, :recipe_id]
      # t.index [:recipe_id, :category_id]
    end
  end
end
