Rails.application.routes.draw do
  mount ReadingList::Base => '/'

  resources :tags
  resources :articles
end
