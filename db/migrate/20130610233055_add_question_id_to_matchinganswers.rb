class AddQuestionIdToMatchinganswers < ActiveRecord::Migration
  def change
    add_column :matchinganswers, :question_id, :integer
  end
end
