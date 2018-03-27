class CreateNumberContents < ActiveRecord::Migration[5.1]
  def change
    create_table :number_contents do |t|
      t.references :post
      t.string     :label
      t.integer       :content
      t.timestamps
    end
  end
end
