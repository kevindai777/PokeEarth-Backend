class CreateMoves < ActiveRecord::Migration[5.2]
  def change
    create_table :moves do |t|
      t.string :name
      t.string :url
      t.string :typing

      t.timestamps
    end
  end
end
