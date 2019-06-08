class PostsController < ApplicationController
  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  # add create method here
  def create
    post1 = Post.new
    post1.title = params[:title]
    post1.description = params[:description]
    post1.save
    redirect_to post_path(@post)
  end
end
