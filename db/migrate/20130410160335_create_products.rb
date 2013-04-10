class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.string :type
      t.string :img_url
      t.decimal :price, :precision => 8, :scale => 2
      t.boolean :available, :default => false
      t.string :requires
      t.timestamps
    end
  end
  def self.down
    drop_table :products
  end
end
