class CreateSpreeImageCombines < ActiveRecord::Migration[5.2]
  def change
    create_table :spree_image_combines do |t|
      t.references :cropped_image

      t.timestamps
    end
  end
end
