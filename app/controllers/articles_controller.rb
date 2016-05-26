class ArticlesController < ApplicationController
  def index
  	@articles = Article.all
  end

  def new
  	@article = Article.new
  end

  def create
  	@article = Article.new(article_params)
  	if @article.save
        redirect_to root_path

    end
  end

  def edit
  end

  private
	def article_params
	  params.require(:article).permit(:title, :description)
	end
end
