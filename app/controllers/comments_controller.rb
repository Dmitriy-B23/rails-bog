class CommentsController < ApplicationController
  before_action :authenticate_user!
  before_action :find_article


  def create
    @comment = @article.comments.build(comment_params)
    @comment.save
    redirect_to article_path(@article)
  end

  def destroy
    @comment = @article.comments.find(params[:id])
    @comment.destroy
    redirect_to article_path(@article), status: :see_other
  end

  private

  def find_article
    @article = Article.friendly.find(params[:article_slug])
  end

  def comment_params
    params.require(:comment).permit(:commenter, :body, :status)
  end
end

