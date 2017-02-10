# Rails.application.routes.draw do
#   # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# ressources
# end
Rails.application.routes.draw do
  root to: 'cocktails#index'
  resources :doses, only:[:destroy]
  resources :cocktails, only:[:index, :new, :create, :show] do
    resources :doses, only:[:new, :create]
  end
end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


# Routing

# Once again, you must have a precise idea of the features of your app in order to build your routes.
# Here is the list of features:

# A user can see the list of all cocktails
# GET "cocktails"
# A user can see the details of a given cocktail, with the ingredient list
# GET "cocktails/42"
# A user can create a new cocktail.
# GET "cocktails/new"
# POST "cocktails"
# A user can add a new dose (ingredient/description pair) on an existing cocktail.
# GET "cocktails/42/doses/new"
# POST "cocktails/42/doses"
# A user can delete a dose on an existing cocktail
# DELETE "doses/25"
# And now think. Do we need an IngredientsController?

