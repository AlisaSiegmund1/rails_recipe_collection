class AddServingToRecipe < ActiveRecord::Migration[5.2]
  def change
    add_column :recipes, :serving, :integer
  end
end
