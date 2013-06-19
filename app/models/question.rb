class Question < ActiveRecord::Base
  attr_accessible :name, :type, :matchingquestions_attributes, :matchinganswers_attributes
  
  validates_presence_of :name, :type
  has_many :matchingquestions
  has_many :matchinganswers
  # has_many :matchinganswers
  accepts_nested_attributes_for :matchingquestions
  accepts_nested_attributes_for :matchinganswers
  
end
