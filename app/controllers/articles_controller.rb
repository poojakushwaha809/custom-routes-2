class ArticlesController < ApplicationController

	def pooja_index
		    @articles = Article.all

	end

	# def article_pooja_index
	# 	    @articles = Article.all

	# end




	def pooja_new
		 @article = Article.new
	end

	def article_pooja_new
		 @article = Article.new
	end

	def article_pooja_create
		@article = Article.new(article_params)

	  @article.save
	  redirect_to pooja_created_path(@article)
		
	end

	def pooja_create
	 @article = Article.new(article_params)

	  @article.save
	  redirect_to pooja_created_path(@article)
	end

	def pooja_edit
      @article = Article.find(params[:id])

	end

	# def  article_pooja_edit
 #      @article = Article.find(params[:id])

	# end



	def pooja_show
    @article = Article.find(params[:id])
	
	end

    def pooja_update
	    @article = Article.find(params[:id])
	 
	    if @article.update(article_params)
	      redirect_to @article
	    else
	      render 'edit'
	    end
    end

    #  def article_pooja_update
	   #  @article = Article.find(params[:id])
	 
	   #  if @article.update(article_params)
	   #    redirect_to @new_article
	   #  else
	   #    render 'edit'
	   #  end
    # end
 
    def pooja_destroy
	    @article = Article.find(params[:id])
	    @article.destroy
	 
	    redirect_to articles_path
	  end
      
   #  def article_pooja_destroy
	  #   @article = Article.find(params[:id])
	  #   @article.destroy
	 
	  #   redirect_to new_articles_path
	  # end
 

	private
	  def article_params
	    params.require(:asheesh).permit(:title, :text)
	  end
end
