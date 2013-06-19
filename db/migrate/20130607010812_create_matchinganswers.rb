class CreateMatchinganswers < ActiveRecord::Migration
  def change
    create_table :matchinganswers do |t|
      t.text :content
      t.text :option
      t.integer :matchingquestion_id

      t.timestamps
    end
  end
end
