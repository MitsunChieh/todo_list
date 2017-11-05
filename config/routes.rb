Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # 會產生七組路由，與相對應的 path_helpers/url_helpers
  # 在 iterm 命令列輸入 `rails routes` 可得到下表
  #  ↓helper 的前綴   ↓路由比對的規則             ↓對應的 controller & action
  #    Prefix Verb   URI Pattern               Controller#Action
  #     todos GET    /todos(.:format)          todos#index
  #           POST   /todos(.:format)          todos#create
  #  new_todo GET    /todos/new(.:format)      todos#new
  # edit_todo GET    /todos/:id/edit(.:format) todos#edit
  #      todo GET    /todos/:id(.:format)      todos#show
  #           PATCH  /todos/:id(.:format)      todos#update
  #           PUT    /todos/:id(.:format)      todos#update
  #           DELETE /todos/:id(.:format)      todos#destroy
  resources :todos

  # commit 0c41e75 中沒有使用到 show 這個路由，可以用 except: :show 把它關掉
  # resources :todos, except: :show
  # 如此一來，在 iterm 命令列中輸入 `rails routes` 時，就會少一個路由比對規則
  #    Prefix Verb   URI Pattern               Controller#Action
  #     todos GET    /todos(.:format)          todos#index
  #           POST   /todos(.:format)          todos#create
  #  new_todo GET    /todos/new(.:format)      todos#new
  # edit_todo GET    /todos/:id/edit(.:format) todos#edit
  #      todo PATCH  /todos/:id(.:format)      todos#update
  #           PUT    /todos/:id(.:format)      todos#update
  #           DELETE /todos/:id(.:format)      todos#destroy

  # 指定根路由連到 todos 的列表頁: TodosController#index
  #      root GET    /                         todos#index
  root 'todos#index'
end
