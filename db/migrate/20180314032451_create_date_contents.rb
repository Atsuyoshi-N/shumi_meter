class CreateDateContents < ActiveRecord::Migration[5.1]
  def change
    create_table :date_contents do |t|
      t.references :post
      t.string     :label
      t.datetime   :content
      t.timestamps
    end
  end
end
