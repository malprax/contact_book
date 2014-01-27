class CreateEmployments < ActiveRecord::Migration
  def change
    create_table :employments do |t|
      t.string :title
      t.text :info
      t.string :image
      t.string :writer

      t.timestamps
    end
  end
end
