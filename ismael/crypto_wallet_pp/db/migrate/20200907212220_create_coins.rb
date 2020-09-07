class CreateCoins < ActiveRecord::Migration[5.2]
  def change
    create_table :coins do |t|
      t.string :description
      t.string :acronym
      t.decimal :price
      t.string :url_image
      t.references :mining_type, foreign_key: true

      t.timestamps
    end
  end
end
