class CreateNewstudents < ActiveRecord::Migration
  def change
    create_table :newstudents do |t|
      t.string :name
      t.date :birth
      t.string :street
      t.boolean :religion
      t.string :contact_person
      t.boolean :gender

      t.timestamps
    end
  end
end
