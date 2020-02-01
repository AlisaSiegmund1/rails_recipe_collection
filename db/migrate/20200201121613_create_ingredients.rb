class CreateIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :ingredients do |t|
      t.string :description
      t.integer :dose
      t.string :unit
      t.references :recipe, foreign_key: true

      t.timestamps
    end
  end
end
