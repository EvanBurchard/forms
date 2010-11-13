class SubmissionsController < ApplicationController

 def index
   @submissions = Submission.all
 end
 
 def show
   @submission = Submission.find(params[:id])
 end

  def new
    @submission = Submission.new
  end
  
  def create
     @submission = Submission.new(params[:submission])
     @submission.save
     redirect_to :controller => 'surveys', :action => 'index'
  end

end

