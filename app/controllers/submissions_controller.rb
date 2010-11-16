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
    begin
      params[:submission][:responses_attributes].each do |c|
        r = Response.new
        choices = c[1]["choices_attributes"]["id"].map(&:to_i)
        choices = choices.map do |c|
          Choice.find(c)
        end
        r.choices = choices
        @responses << r
      end
    rescue 
      nil
    end
    @submission = Submission.new(:survey_id => params[:survey_id], :user_id => params[:submission][:user_id], :responses => @responses, :time_stamp => Time.now)
    @submission.save
    redirect_to :controller => 'surveys', :action => 'index'
  end

end

