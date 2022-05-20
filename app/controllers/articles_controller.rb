class ArticlesController < ApplicationController
  
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  private #Strong Parameters  => para filtrar los parámetros. Piense en ello como una tipificación fuerte para parámetros.
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
