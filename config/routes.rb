FoodientTest::Application.routes.draw do
  root :to => 'home#index'
  match 'items(.:format)' => 'home#items', :as => :items
end
