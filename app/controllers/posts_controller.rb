class PostsController < ApplicationController
  before_action :set_post, only: [:index, :show, :edit, :update]

  def index
    @tag = TagManagement.where(tag: @post.tag).order(:order)
  end

  def new
    @tag_name = '映画'
    @tag = TagManagement.where(tag: @tag_name).order(:order)
  end

  def create
    redirect_to posts_path
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
    @post = Post.find(1)
  end

end

