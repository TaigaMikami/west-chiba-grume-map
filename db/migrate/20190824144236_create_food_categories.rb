class CreateFoodCategories < ActiveRecord::Migration[5.2]
  def change
    create_table :food_categories do |t|
      t.string :name, null: false, comment: '食べ物のカテゴリー'
      t.references :shop, foreign_key: true

      t.timestamps
    end
  end
end
