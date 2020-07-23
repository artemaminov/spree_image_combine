class CreateSpreeImageCombines < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_image_combines do |t|
      t.references :cropped_image
      t.references :block_position, foreign_key: { to_table: :spree_image_combine_block_positions }
      t.references :block_type, foreign_key: { to_table: :spree_image_combine_block_types }

      t.timestamps
    end
  end
end
