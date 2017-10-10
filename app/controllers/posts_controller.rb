class PostsController < ApplicationController
  def new
  	@post = Post.new
  end

  def index
  	@posts = Post.all
  end

  def create
    @post = Post.new(params[:post].permit(:description))

    @post.save
    redirect_to @post
  end

  def show
  	@post = Post.find(params[:id])
  end
end
