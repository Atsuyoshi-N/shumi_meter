class CreateTextareaContents < ActiveRecord::Migration[5.1]
  def change
    create_table :textarea_contents do |t|
      t.references :post
      t.string     :label
      t.text       :content
      t.timestamps
    end
  end
end
