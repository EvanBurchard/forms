require 'spec_helper'

describe SubmissionsController do

  describe "when I GET 'index'" do 
    before(:each) do 
      @survey = mock_model(Survey, :id => 1)
      get 'index', :survey_id => @survey.id
    end
    it {should assign_to :submissions}
    it "should render the index view when I GET 'index'" do
      response.should render_template('index')
    end
  end

  describe "when I GET 'new'" do 
    before(:each) do 
      @survey = mock_model(Survey, :id => 1)
      get 'new', :survey_id => @survey.id
    end
    it { should assign_to :submission }
    it "should render the new view when I GET 'new'" do
      response.should render_template('new')
    end
  end
  describe "when I GET 'show'" do 
    before(:each) do 
      @survey = mock_model(Survey, :id => 1)
      Submission.stub!(:find).and_return(@submission = mock_model(Submission, :id => 1))
      get 'show', :id => 1, :survey_id => @survey.id
    end
      
    it {should assign_to :submission}
    it "should render the show view when I GET 'show' with id 1" do
      response.should render_template('show')
    end
  end


  describe "when I successfully POST 'create" do 
    before(:each) do
      @survey = mock_model(Survey, :id => 1)
      Submission.stub!(:new).and_return(@submission = mock_model(Submission, :save=>true))
    end 
    def do_create
      post :create, :submission => {:title=>"My create"}, :survey_id => @survey.id
    end
    
    it "should assign the submission" do
      do_create
      assigns(:submission).should_not be_nil
    end
    
    it "should save the submission" do
      @submission.should_receive(:save).and_return(true)
      do_create
    end

    it "should be redirect" do
      do_create
      response.should be_redirect
    end

    it "should redirect to survey index page" do
      do_create
      response.should redirect_to(:controller => 'surveys', :action => 'index')
    end
  end


end
