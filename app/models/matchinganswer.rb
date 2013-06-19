class Matchinganswer < ActiveRecord::Base
  attr_accessible :content, :option, :matchingquestion_id, :question_id
  
  belongs_to :question, :class_name => "Question", :foreign_key => :question_id
  belongs_to :matchingquestion, :class_name => "Matchingquestion", :foreign_key => :matchingquestion_id
  
  # has_one :matchingquestion, :class_name => "Matchingquestion", :foreign_key => :matchingquestion_id
  # belongs_to :question

  # attr_accessible :matching_question_id, :name, :option
  # validates_presence of :matching_question_id, :name, :option
  #   
  # belongs_to :matching_answer
  
end
