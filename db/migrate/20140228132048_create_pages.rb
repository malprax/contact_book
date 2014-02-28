class CreatePages < ActiveRecord::Migration
  def change
    create_table :pages do |t|
      t.string :name
      t.text :input_text
      t.string :slug
      t.string :parent_id

      t.timestamps
    end
  end
end
