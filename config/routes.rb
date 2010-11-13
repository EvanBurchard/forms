SurveyApp::Application.routes.draw do

  resources :surveys

  root :to => "surveys#index"

end
