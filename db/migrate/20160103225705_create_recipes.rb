class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :name
      t.text :description
      t.text :ingredients
      t.text :directions
      t.text :image
      t.text :benefits

      t.timestamps null: false
    end
  end
end
