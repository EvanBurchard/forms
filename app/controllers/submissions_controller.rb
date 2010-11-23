class SubmissionsController < ApplicationController

 def index
   @survey = Survey.find(params[:survey_id])
   @submissions = Submission.all
 end
 
 def show
   @survey = Survey.find(params[:survey_id])
   @submission = Submission.find(params[:id])
 end

  def new
    @survey = Survey.find(params[:survey_id])
    @submission = Submission.new
    @user = User.new

  end
  
  def create
    @survey = Survey.find(params[:survey_id])
    @responses = []
    response_params = params[:submission][:responses_attributes]
      response_params.each do |key, value|
        @responses << Response.new(:choice => Choice.find(value["choices_attributes"]["id"].first))
      end
    params[:submission][:question][:choice_ids].each do |choice_id|
      @responses << Response.new(:choice => Choice.find(choice_id)) unless choice_id == ""
    end
    @submission = Submission.new(:survey_id => params[:survey_id], :user_id => params[:submission][:user_id], :responses => @responses, :time_stamp => Time.now)
    @submission.save
    redirect_to :controller => 'surveys', :action => 'index'
  end

end

