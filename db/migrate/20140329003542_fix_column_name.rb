class FixColumnName < ActiveRecord::Migration
  def change
    rename_column :pages, :parent_id, :ancestry
    
  end
end
