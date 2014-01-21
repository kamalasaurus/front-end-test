FrontEndTest::Application.routes.draw do

  root :to => "judge#index"
  get "/judge/:id" => "judge#show"

end
