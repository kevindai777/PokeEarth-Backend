class CreateTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :types do |t|

      t.string :name
      t.string :weak_to, default: [].to_yaml
      t.string :immune_to, default: [].to_yaml
      t.string :resists, default: [].to_yaml
      t.string :weak_against, default: [].to_yaml
      t.string :strong_against, default: [].to_yaml
      t.timestamps
    end
  end
end
