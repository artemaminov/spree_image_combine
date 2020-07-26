class Spree::ImagesPositionsType < ApplicationRecord
  belongs_to :image_combine, inverse_of: :images_positions_types
  belongs_to :block_position, :class_name => 'Spree::ImageCombineBlockPosition', inverse_of: :images_positions_types

end
