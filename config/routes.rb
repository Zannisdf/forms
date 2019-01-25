Rails.application.routes.draw do
  get 'students/new'
  get 'students/show'
  get 'students/create'

  root 'students#new'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
