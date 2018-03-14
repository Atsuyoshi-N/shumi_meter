class CreateTagManagements < ActiveRecord::Migration[5.1]
  def change
    create_table :tag_managements do |t|
      t.references :user
      t.string     :tag
      t.string     :label
      t.integer    :order
      t.string     :datatype
      t.timestamps
    end
  end
end
