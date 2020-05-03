class RemoveDescriptionFromRecipes < ActiveRecord::Migration[5.2]
  def change
    remove_column :recipes, :description, :string
  end
end
