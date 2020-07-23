module Spree
  class ImageCombine < Spree::Base
    belongs_to :cropped_image, class_name: "Spree::CroppedImage"
    belongs_to :block_position, class_name: "Spree::ImageCombineBlockPosition"
    belongs_to :block_type, class_name: "Spree::ImageCombineBlockType"

    accepts_nested_attributes_for :cropped_image
    accepts_nested_attributes_for :block_position
    accepts_nested_attributes_for :block_type

    def self.table_name_prefix
      'spree_image_combine_'
    end
  end
end
