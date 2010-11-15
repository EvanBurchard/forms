SurveyApp::Application.routes.draw do

  resources :surveys do
    resources :submissions, :except => [:update, :edit, :delete]
  end

  root :to => "surveys#index"

end
