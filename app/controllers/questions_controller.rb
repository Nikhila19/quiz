class QuestionsController < ApplicationController

  def new
    @question = Question.new
    @matchingquestion = @question.matchingquestions.build
    @matchinganswer = @question.matchinganswers.build
  end
  
  def create
    
    question_params = params[:question].dup
    mq_params = question_params.delete("matchingquestions_attributes")
    ma_params = question_params.delete("matchinganswers_attributes")
 
    #object.new;  yield is in object.new, which is
    # object.save happens after; so calling create or save with a block does not have the id of the AR object within the block
    @question = Question.new(question_params)  
    @question.save
    mq_params.each do |k, v|
      matching_question = Matchingquestion.create(v.merge({:question_id => @question.id}))
      @question.matchingquestions << matching_question 
      associated_answer = ma_params[k]
      answer = Matchinganswer.create(associated_answer.merge({:question_id => @question.id, :matchingquestion_id => matching_question.id }))
      @question.matchinganswers << answer  
    end
    render :json => @question     
  end
  
  def index
    @questions = Question.all
    
  end
  
  def show
    @question = Question.find(params[:question_id])
    if @question.type == 'matching'
      @matching_questions = @question.matching_questions
      @question = @matching_questions 
    end
  end

end