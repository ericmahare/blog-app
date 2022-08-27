class Api::V1::PostsController < ApplicationController
  def index
    @user = User.find(params[:user_id])
    @posts = @user.posts.includes(:comments)
    render json: @posts
  end

  def show
    @post = Post.find(params[:id])
    render json: @post
  end
end

# def index
#   @user = User.find(params[:user_id])
#   @posts = @user.posts.includes(:comments)
#   @current_user = current_user.id
# end

# def show
#   @post = Post.find(params[:id])
#   @user = @post.user
#   @comments = @post.comments
# end
