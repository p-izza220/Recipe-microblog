class CreateRecipes < ActiveRecord::Migration[5.0]
  def change
    create_table :recipes do |t|
      t.string :recipe_title
      t.attachment :avatar
      t.text :ingredients
      t.text :directions
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
