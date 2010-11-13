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
  describe "when I GET 'new'" do 
    before(:each) do 
      get 'new'
    end
    it { should assign_to :survey }
    it "should render the new view when I GET 'new'" do
      response.should render_template('new')
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

end
