class AddCategoryIdToRecipes < ActiveRecord::Migration
  def change
    add_column :recipes, :category, :belongs_to

  end
end
