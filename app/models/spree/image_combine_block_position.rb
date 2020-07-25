module Spree
  class ImageCombineBlockPosition < Spree::Base
    belongs_to :block_type, class_name: 'Spree::ImageCombineBlockType', inverse_of: :block_positions
    has_many :images_positions_types, class_name: 'Spree::ImagesPositionsType'
    has_many :image_combines, :class_name => 'Spree::ImageCombine', through: :images_positions_types

    validates_presence_of :name, :block_id

    accepts_nested_attributes_for :image_combines, :images_positions_types, :block_type

  end
end
