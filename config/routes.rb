Rails.application.routes.draw do
  resources :achievements
  resources :team_members
  resources :blogs
  devise_for :users

  # Home routes
  get 'home/index'
  get 'home/alumini'
  get 'home/library'
  get 'home/pay'

  # Subscriptions
  post '/subscribe', to: 'subscriptions#create', as: 'subscribe'

  # Admin Panel
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  # Events
  namespace :events do
    get 'events/index'
    get 'events/show'
    get '/', to: 'events#index', as: 'all_events'
    get ':year', to: 'events#index', as: 'year_events'
    get ':year/:event_id', to: 'events#show', as: 'event'
  end

  # Resources (Previous Year Papers, DSA Roadmap)
  get 'resources/questions', to: 'resources#questions', as: 'previous_year_questions'
  get 'resources/internships', to: 'resources#internships', as: 'internship_roadmap'

  # ACE Team & CRs - Fixed the controller to team_members
  get 'ace_team', to: 'team_members#ace', as: 'ace_team'
  get 'current_crs', to: 'team_members#crs', as: 'current_crs'

  # Achievements Section
  resources :achievements, only: [:index, :show]

  # Define root path
  root "home#index"
end
