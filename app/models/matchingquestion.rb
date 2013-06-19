class Matchingquestion < ActiveRecord::Base
  attr_accessible :content, :question_id
  
  belongs_to :question, :class_name => "Question", :foreign_key => :question_id
  has_one :matchinganswer
  
  # accepts_nested_attributes_for :matchinganswers
end
