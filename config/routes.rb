Rails.application.routes.draw do
  resources :campus_cats
  # 生成一个路由
  get 'home/index'
  get 'home/about'
  # 将home/index设置成我们的主页（也就是一打开就看见的页面）
  root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
