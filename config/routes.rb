Delwin::Application.routes.draw do
	resources :articles, :categories, :books

	root to: 'articles#index'
		
end
