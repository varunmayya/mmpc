class FixColumnName < ActiveRecord::Migration
  def up
  rename_column :products, :type, :part_type
  end

  def down
  rename_column :products, :part_type, :type
  end
end
