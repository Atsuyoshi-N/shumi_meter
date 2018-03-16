class PostsController < ApplicationController
  before_action :set_post, only: [:index, :show, :edit, :update]
  before_action :set_tags, only: [:new, :create]

  def index
    @tag = TagManagement.where(tag: @post.tag).order(:order)
  end

  def new
  end

  def create
    post = Post.new(post_params)
    if post.save
      text_contents = TextContent.new(content: text_contents_params["タイトル"], post_id: post.id)
      if text_contents.save
        redirect_to posts_path
      else
        p text_contents.errors.full_messages
        redirect_to new_post_path
      end
    else
      render 'new'
    end
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

  def set_tags
    @tag_name = '映画'
    @tags = TagManagement.where(tag: @tag_name).order(:order)
  end

  def post_params
    params.permit(:tag, :user_id)
  end

  def text_contents_params
    params.permit("タイトル".to_sym)
  end

end

