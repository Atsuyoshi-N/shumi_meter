class CreateImageContents < ActiveRecord::Migration[5.1]
  def change
    create_table :image_contents do |t|

      t.timestamps
    end
  end
end
