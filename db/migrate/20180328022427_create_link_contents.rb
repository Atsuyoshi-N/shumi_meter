class CreateLinkContents < ActiveRecord::Migration[5.1]
  def change
    create_table :link_contents do |t|
      t.references :post
      t.string     :label
      t.string     :content
      t.timestamps
    end
  end
end
