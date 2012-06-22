class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string :title
      t.string :description
      t.date :best_eaten_by

      t.timestamps
    end
  end
end
