Rails.application.routes.draw do
	get 'articles', to: 'articles#pooja_index'
	get 'articles/new', to: 'articles#pooja_new'

	get 'articles/:id', to: 'articles#pooja_show', as: :pooja_created

	post 'articles', to: 'articles#pooja_create'
    get 'articles/:id/edit', to: 'articles#pooja_edit',  as: :edit_pooja
    patch 'articles/:id', to: 'articles#pooja_update'
    delete 'articles/:id', to: 'articles#pooja_destroy', as: :destroy
    


	
	get 'articles', to: 'articles#article_pooja_index'
	get 'articles/article_pooja_new', to: 'articles#article_pooja_new'
    post 'new_articles', to: 'articles#article_pooja_create'


    # get 'articles/:id/edit', to: 'articles#article_pooja_edit',  as: :edit_pooja_acticle
    # patch 'articles/:id', to: 'articles#article_pooja_update'
    # delete 'articles/:id', to: 'articles#article_pooja_destroy', as: :destroy_article
    


	
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
