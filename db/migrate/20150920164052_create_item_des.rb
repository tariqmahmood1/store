class CreateItemDes < ActiveRecord::Migration
  def change
    create_table :item_des do |t|
      t.string :title
      t.string :unit

      t.timestamps null: false
    end
  end
end
