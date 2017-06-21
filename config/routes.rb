Rails.application.routes.draw do
  get 'weather/zip'

  post 'weather/view'

  root 'weather#zip'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
