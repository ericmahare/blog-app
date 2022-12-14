class Api::V1::CommentsController < ApplicationController
  protect_from_forgery with: :null_session
  def new
    @comment = Comment.new
    respond_to do |format|
      format.json { render json: @comment }
    end
  end

  def create
    @post = Post.find(params[:post_id])
    @comment = current_user.comments.new(post_id: @post.id, user_id: current_user.id, Text: comment_params)
    @comment.post_id = @post.id
    return unless
    @comment.save

    respond_to do |format|
      format.json { render json: @comment, status: 'Created' }
    end
  end

  def comment_params
    params.require(:comment).permit(:text)[:text]
  end
end
