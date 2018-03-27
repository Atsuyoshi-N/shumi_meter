class TagManagementsController < ApplicationController
  def new
    @form = Form::TagManagementCollection.new
    @user_having_tags = current_user.tag_managements.select(:tag).uniq{|i| i.tag}
    @tag_name = ''
  end

  def create
    @form = Form::TagManagementCollection.new(tag_management_collection_params)
    if @form.save
      redirect_to root_path, notice: 'タグを登録しました'
    else
      render 'new'
    end
  end

  private
  def tag_management_collection_params
    params.require(:form_tag_management_collection).permit(tag_managements_attributes: Form::TagManagement::REGISTRABLE_ATTRIBUTES)
  end
end
