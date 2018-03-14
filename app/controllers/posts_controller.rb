class PostsController < ApplicationController
  before_action :set_post, only: [:show, :edit, :update]

  def index
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def destory
  end

  private
  def set_post
    @post = Post.find(params[:id])
  end

end

