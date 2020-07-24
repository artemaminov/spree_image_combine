class CreateSpreeImageCombineBlockPositions < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_image_combine_block_positions do |t|
      t.string :name, null: false
      t.string :anchor_uid
      t.string :anchor_model
      t.integer :order, default: 1
      t.string :controller_name, null: false

      t.timestamps
    end
  end
end
