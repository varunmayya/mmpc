class CreateCompanies < ActiveRecord::Migration
  def change
    create_table :companies do |t|
      t.string :name
      t.string :image_url
      t.string :description

      t.timestamps
    end
  end
end
