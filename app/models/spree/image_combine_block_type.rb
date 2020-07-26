module Spree
  class ImageCombineBlockType < Spree::Base
    has_many :block_positions, :class_name => 'Spree::ImageCombineBlockPosition', inverse_of: :block_type

  end
end
