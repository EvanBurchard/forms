require 'spec_helper'

describe SurveysController do

  describe "when I GET 'index'" do 
    before(:each) do 
      get 'index'
    end
    it {should assign_to :surveys}
    it "should render the index view when I GET 'index'" do
      response.should render_template('index')
    end
  end
  describe "when I GET 'new'" do 
    before(:each) do 
      get 'new'
    end
    it { should assign_to :survey }
    it "should render the new view when I GET 'new'" do
      response.should render_template('new')
    end
  end
  describe "when I GET 'show'" do 
    before(:each) do 
      Survey.stub!(:find).and_return(@survey = mock_model(Survey, :id => 1))
      get 'show', :id => 1
    end
      
    it {should assign_to :survey}
    it "should render the show view when I GET 'show' with id 1" do
      response.should render_template('show')
    end
  end

  describe "when I GET 'edit'" do 
    before(:each) do 
      @survey = mock_model(Survey, :id => 1) 
      Survey.stub!(:find).and_return(@survey)
      get 'edit', :id => 1
    end
    it { should assign_to :survey }
    it "should render the edit view when I GET 'edit'" do
      response.should render_template('edit')
    end
  end

  describe "when I successfully POST 'create" do 
    before(:each) do
      Survey.stub!(:new).and_return(@survey = mock_model(Survey, :save=>true))
    end 
    def do_create
      post :create, :survey => {:title=>"My create"}
    end
    
    it "should assign the survey" do
      do_create
      assigns(:survey).should_not be_nil
    end
    
    it "should save the survey" do
      @survey.should_receive(:save).and_return(true)
      do_create
    end

    it "should be redirect" do
      do_create
      response.should be_redirect
    end
  end

  describe "when I PUT update" do
    before(:each) do 
      Survey.stub!(:find).and_return(@survey = mock_model(Survey, :title => "my survey"))
      @survey.stub!(:update_attributes).and_return(true)
    end
    def do_update
      put 'update', :id => @survey.id, :survey => {:title=>"updated survey"}
    end
    it "should update the survey object's attributes" do
      @survey.should_receive(:update_attributes).and_return(true)
      do_update
    end

    it "should assign to survey" do 
      do_update
      assigns[:survey].should_not be_nil
    end

    it "should be redirect" do
      do_update
      response.should be_redirect    
    end

    it "should redirect to the survey path" do
      do_update
      response.should redirect_to(survey_path(@survey))
    end

  end 

  describe "when I destroy a survey" do 

    before(:each) do
      @survey = mock_model(Survey, :id=> 1)
      Survey.stub!(:find).and_return(@survey) 
      Survey.stub!(:delete).and_return(true) 
    end

    it "should delete the survey" do
      @survey.should_receive(:destroy).and_return(true)
      delete :destroy, :id => @survey.id
    end
    
    it "should be redirect" do
      delete :destroy, :id => @survey.id
      response.should be_redirect
    end
    it "should redirect to the survey page" do 
      delete :destroy, :id => @survey.id
      response.should redirect_to(surveys_path)                   
    end
  end 
end
