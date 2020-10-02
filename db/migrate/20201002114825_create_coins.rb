class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.text :description
      t.string :acronym
      t.references :mining_type, foreign_key: true

      t.timestamps
    end
  end
end
