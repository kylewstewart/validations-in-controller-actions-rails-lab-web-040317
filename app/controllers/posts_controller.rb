class PostsController < ApplicationController
  before_action :set_post!, only: [:show, :edit, :update]

  def new

  end

  def edit
  end

  def update
    # binding.pry
    @post = Post.find(params[:id])
    if @post.update(post_params)
      @post.save
      redirect_to post_path(@post)
    else
      render :edit
    end
  end

  def show
    @post = Post.find(params[:id])
  end

  private

  def post_params
    params.permit(:category, :content, :title)
  end

  def set_post!
    @post = Post.find(params[:id])
  end
end
