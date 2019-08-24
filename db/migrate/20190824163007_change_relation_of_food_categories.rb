class ChangeRelationOfFoodCategories < ActiveRecord::Migration[5.2]
  def up
    remove_reference :food_categories, :shop, index: true
    add_reference :shops, :food_category, foreign_key: true, after: :name
  end

  def down
    remove_reference :shops, :food_category_id, index: true
    add_reference :food_categories, :shop, foreign_key: true
  end
end
