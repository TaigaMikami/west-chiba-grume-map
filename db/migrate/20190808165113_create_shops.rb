class CreateShops < ActiveRecord::Migration[5.2]
  def change
    create_table :shops do |t|
      t.string :name, null: false, comment: 'お店の名前'
      t.string :address, null: false, comment: '住所'
      t.float :lat, null: false, comment: '緯度'
      t.float :lng, null: false, comment: '経度'
      t.text :description, comment: 'お店の説明'

      t.timestamps
    end
  end
end
