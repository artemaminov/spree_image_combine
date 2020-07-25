class Spree::ImagesPositionsType < ApplicationRecord
  belongs_to :image_combine
  belongs_to :block_position, :class_name => 'Spree::ImageCombineBlockPosition'

end
