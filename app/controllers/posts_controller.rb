class PostsController < ApplicationController
  before_action :set_post, only: [:index, :show, :edit, :update]
  before_action :set_tags, only: [:new, :create, :edit, :update, :index]

  def index
    @tag = TagManagement.where(tag: @post.tag).order(:order)
    @data = formalize_posts(Post.all)
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

  def formalize_post(p)
    tags = TagManagement.where(tag: @tag_name, user_id: current_user).order(:order)
    data = []
    tags.each do |t|
      if t.datatype == "text_contents" then 
        cont = TextContent.find_by(post_id: p.id, label: t.label)
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
    return {"tag" => p.tag, "data" => data}
  end

  def formalize_posts(n)
    data = []
    n.each do |p|
      data.push(formalize_post (p))
    end
    return data
  end
end

