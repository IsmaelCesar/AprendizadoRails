class AddUrlImageToCoin < ActiveRecord::Migration[5.2]
  def change
    add_column :coins, :url_image, :string
  end
end
