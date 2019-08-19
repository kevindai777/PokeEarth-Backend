class CreateFavoriteItems < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_items do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :item, foreign_key: true

      t.timestamps
    end
  end
end
