module Spree
  class ImageCombineBlockType < Spree::Base
    has_many :images_positions_types, class_name: 'Spree::ImagesPositionsType'
    has_many :image_combines, :class_name => 'Spree::ImageCombine', through: :images_positions_types

    accepts_nested_attributes_for :image_combines

  end
end
