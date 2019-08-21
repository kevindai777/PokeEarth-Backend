class CreateFavoritePokemons < ActiveRecord::Migration[5.2]
  def change
    create_table :favorite_pokemons do |t|
      t.belongs_to :user, foreign_key: true
      t.belongs_to :pokemon, foreign_key: true

      t.timestamps
    end
  end
end
