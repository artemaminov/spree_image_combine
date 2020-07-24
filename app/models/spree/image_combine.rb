module Spree
  class ImageCombine < Spree::Base
    has_one :cropped_image, as: :viewable, dependent: :destroy, class_name: 'Spree::CroppedImage'
    has_many :images_positions_types, class_name: 'Spree::ImagesPositionsType'
    has_many :block_positions, :class_name => 'Spree::ImageCombineBlockPosition', through: :images_positions_types
    has_many :block_types, :class_name => 'Spree::ImageCombineBlockType', through: :images_positions_types

    accepts_nested_attributes_for :cropped_image
    accepts_nested_attributes_for :images_positions_types
    accepts_nested_attributes_for :block_positions
    accepts_nested_attributes_for :block_types

    def self.table_name
      'spree_image_combines'
    end

    def self.table_name_prefix
      'spree_image_combine_'
    end
  end
end
