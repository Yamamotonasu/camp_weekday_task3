Rails.application.routes.draw do
  get '/calcs/:value1/:operators/:value2' => 'calcs#show'
end
