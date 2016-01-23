class CommentsController < ApplicationController

  def index
    render json: Comment.all
  end

  def create
    render json: Comment.create(comment_params)
  end

  private

  def comment_params
    params.require(:comment).permit(:author, :comment)
  end
end
