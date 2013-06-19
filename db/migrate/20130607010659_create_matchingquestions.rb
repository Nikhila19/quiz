class CreateMatchingquestions < ActiveRecord::Migration
  def change
    create_table :matchingquestions do |t|
      t.text :content
      t.integer :question_id

      t.timestamps
    end
  end
end
