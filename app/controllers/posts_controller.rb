class PostsController < ApplicationController
  before_action :set_post, only: [:index, :show, :edit, :update]
  before_action :set_tags, only: [:new, :create]

  def index
    @tag = TagManagement.where(tag: @post.tag).order(:order)
    # 下の記述は画像が表示されるかの確認のために一時的に追加した。
    # @image = Post.find(8)
  end

  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: "保存に成功しました。"
    else
      flash.now[:alert] = "保存に成功しました"
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
    params.require(:post).permit(:tag, :user_id, text_contents_attributes: [:content, :label], textarea_contents_attributes: [:content, :label], date_contents_attributes: [:content, :label], image_contents_attributes: [:content, :label])
  end

end

