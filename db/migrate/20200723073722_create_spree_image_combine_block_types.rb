class CreateSpreeImageCombineBlockTypes < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_image_combine_block_types do |t|
      t.string :name
      t.integer :width
      t.integer :height
      t.string :controller_name

      t.timestamps
    end
  end
end
