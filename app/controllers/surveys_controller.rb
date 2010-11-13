class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end
  
  def new
    @survey = Survey.new
    #untested
    3.times do
      question = @survey.questions.build
      4.times { question.choices.build }
    end
  end

  def show
    @survey = Survey.find(params[:id])
  end
  
  def create
     @survey = Survey.new(params[:survey])
     @survey.save
     redirect_to :action => 'index'
#    else
#      render :action => 'new'
#    end
  end

  def edit
    @survey = Survey.find(params[:id])
  end

  
  def update
    @survey = Survey.find(params[:id])
    @survey.update_attributes(params[:survey])
    redirect_to survey_path(@survey)
  end

  def destroy
    @survey = Survey.find(params[:id])
    @survey.destroy
    redirect_to surveys_path
  end
end
