class AddPublishToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :publish, :boolean
  end
end
