class SurveysController < ApplicationController

  def index
    @surveys = Survey.all
  end
  
  def new
    @survey = Survey.new
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
#
#  def edit
#  end
#  
#  def update
#    params[:survey][:scheme_ids] ||= []  
#    @survey.update_attributes(params[:survey])
#    redirect_to survey_path(@survey)
#  end
#
#  def destroy
#    survey.delete(@survey)
#    redirect_to surveys_path
#  end
end
