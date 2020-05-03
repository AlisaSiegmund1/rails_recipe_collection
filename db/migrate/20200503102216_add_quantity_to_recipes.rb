class AddQuantityToRecipes < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :quantity, :string
  end
end
