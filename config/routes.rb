Pizzaworld::Application.routes.draw do
  resources :pizzas
  resources :restaurants
  get "/" => redirect("/restaurants")
end
