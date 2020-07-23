class CreateSpreeImageCombineBlockPositions < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_image_combine_block_positions do |t|
      t.string :anchor_uid
      t.string :model_name

      t.timestamps
    end
  end
end
