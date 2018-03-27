class PostsController < ApplicationController
  require 'set'

  before_action :set_post, only: [:index, :show, :edit, :update]
  before_action :set_tags, only: [:new, :create, :edit, :update, :index]

  def index
    @tag = TagManagement.where(tag: @post.tag).order(:order)
    # 下の記述は画像が表示されるかの確認のために一時的に追加した。
    # @image = Post.find(8)
    @all_tags = Set.new
    current_user.tag_managements.each do |x|
      @all_tags.add(x.tag)
    end
    @data = formalize_posts(Post.all)
  end


  def new
    @post = Post.new
  end

  def create
    @post = Post.new(post_params)
    if @post.save
      redirect_to root_path, notice: "保存に成功しました。"
    else
      flash.now[:alert] = "保存に失敗しました"
      render 'new'
    end
  end

  def show
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
  end

  def destory
  end

  def select_tag
    @tags = current_user.tag_managements.select(:tag).uniq{|i| i.tag}
  end

  private
  def set_post
    @post = Post.find(1)
  end

  def set_tags
    @tag_name = '映画'
    @tags = TagManagement.where(tag: @tag_name).order(:order)
    @user_having_tags = current_user.tag_managements.select(:tag).uniq{|i| i.tag}
  end

  def post_params
    params.require(:post).permit(:tag, :user_id, text_contents_attributes: [:content, :label], textarea_contents_attributes: [:content, :label], date_contents_attributes: [:content, :label], image_contents_attributes: [:content, :label])
  end

  def formalize_post(all_posts, tag_name)
    tags = TagManagement.where(tag: tag_name, user_id: current_user).order(:order)
    posts = []
    all_posts.each do |p|
      next if p.tag != tag_name
      data = []
      tags.each do |t|
        if t.datatype == "text_contents" then
          cont = TextContent.find_by(post_id: p.id, label: t.label)
          # binding.pry
          data.push({"datatype" => "text_contents", "label" => cont.label, "content" => cont.content})
        elsif t.datatype == "textarea_contents" then
          cont = TextareaContent.find_by(post_id: p.id, label: t.label)
          data.push({"datatype" => "text_contents", "label" => cont.label, "content" => cont.content})
        elsif t.datatype == "date_contents" then
          cont = DateContent.find_by(post_id: p.id, label: t.label)
          data.push({"datatype" => "text_contents", "label" => cont.label, "content" => cont.content})
        else
          fail
        end
      end
      posts.push(data)
    end
    return {"tag_name" => tag_name, "post_list" => posts}
  end

  def formalize_posts(all_posts)
    datas = [] # list of posts of each tag
    @all_tags.each do |tag|
      datas.push(formalize_post(all_posts, tag))
    end
    return datas
  end
end

