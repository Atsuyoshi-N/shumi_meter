class CreateNumberContents < ActiveRecord::Migration[5.1]
  def change
    create_table :number_contents do |t|

      t.timestamps
    end
  end
end
