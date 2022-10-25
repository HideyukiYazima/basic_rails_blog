class ArticlesController < ApplicationController

  def index
    @articles = Article.all.order(created_at: 'desc')
  end
  
  def show
    @articles = Article.find(params[:id])
  end

  def new
    @articles = Article.new
  end

  def create
    @articles = Article.new(articles.params)
    if @articles.save
      redirect_to articles_path
    else
      render 'new'
    
   end
  end

  def edit
    @articles = Article.find(params[:id])
  end

  def update
    @articles = Article.find(params[:id])
    if @articles.update(articles_params)
      redirect_to articles_path
    else
      render 'edit'
    end
  end

  def destroy
    @articles = Article.find(params[:id])
    @articles.destroy
    redirect_to articles_path
  end
  
  private
    def articles_params
      params.require(:articles).permit(:title, :body)
    end

end
