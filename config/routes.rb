Rails.application.routes.draw do
  #管理者アカウント
  devise_for :admins, controllers: {
    registrations: 'admins/registrations',
    sessions: 'admins/sessions'
  }

  resources :admins, only: [:show]

  root to: 'top#index' #トップページ

  resources :columns

  resources :estimates do
    resource :comments
    collection do
      post :confirm
      post :thanks
    end
    member do
      get :apply
      post :send_mail
      get :confirm_point
      post :apply
    end
  end

  #get '*path', controller: 'application', action: 'render_404'
end
