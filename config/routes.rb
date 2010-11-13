SurveyApp::Application.routes.draw do

  resources :surveys

  resources :submissions, :except => [:update, :edit, :delete]

  root :to => "surveys#index"

end
