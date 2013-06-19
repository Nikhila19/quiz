class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.text :name
      t.string :type
      t.string :optiona
      t.string :optionb
      t.string :optionc
      t.string :optiond

      t.timestamps
    end
  end
end
