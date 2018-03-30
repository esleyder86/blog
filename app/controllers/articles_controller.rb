class ArticlesController < ApplicationController
  def index
    @article = Article.all
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new
    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  private

  def article_params
    Article.permit(:article).require(:title,:body)
  end

end
