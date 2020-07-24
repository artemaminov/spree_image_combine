class Spree::ImagesPositionsType < ApplicationRecord
  belongs_to :image_combine
  belongs_to :block_position, :class_name => 'Spree::ImageCombineBlockPosition'
  belongs_to :block_type, :class_name => 'Spree::ImageCombineBlockType'
end
