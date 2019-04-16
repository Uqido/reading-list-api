Rails.application.routes.draw do
  mount ReadingList::Base => '/'
  mount GrapeSwaggerRails::Engine, at: '/documentation'

  resources :tags
  resources :articles
end
