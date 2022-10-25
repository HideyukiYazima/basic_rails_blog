class CommentsController < ApplicationController

  def create
    @articles = Article.find(params[:articles_id])
    @articles.comments.create(comment_params)
    redirect_to articles_path(@articles)
  end

  def destroy
    @articles = Article.find(params[:articles_id])
    @comment = @articles.comments.find(params[:id])
    @comment.destroy
    redirect_to articles_path(@articles)
  end

  private
    def comment_params
      params.require(:comment).permit(:body)
    end

end
