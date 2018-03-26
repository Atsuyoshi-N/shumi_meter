class TagManagementsController < ApplicationController
  def new
    @form = Form::TagManagementCollection.new
  end

  def create
    @form = Form::TagManagementCollection.new(tag_management_collection_params)
    if @form.save
      redirect_to controller: 'posts', action: 'index', notice: 'タグを登録しました'
    else
      render 'new'
    end
  end

  private
  def tag_management_collection_params
    params.require(:form_tag_management_collection).permit(tag_managements_attributes: Form::TagManagement::REGISTRABLE_ATTRIBUTES)
  end
end
