class CreatePhilosophies < ActiveRecord::Migration
  def change
    create_table :philosophies do |t|
      t.text :input_text

      t.timestamps
    end
  end
end
