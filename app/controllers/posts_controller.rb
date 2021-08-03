class PostsController < ApplicationController
  before_action :authenticate_user!, only: %i[new edit update destroy]

  def index
    @posts = Post.all
  end

  def show
    @post = Post.find(params[:id])
  end

  def new
    @post = Post.new
  end

  def create
    @post = current_user.posts.new(post_params)
    if @post.save
      redirect_to @post
    else
      render :new
    end
  end

  def edit

  end

  def update
    if @post.update(post_params)
      redirect_to @post
    else
      render :edit
    end
  end

  def destroy
    @post.destroy
    redirect_to @posts
  end

  private

  def post_params
    params.require(:post).permit(:title, :body)
  end

end
