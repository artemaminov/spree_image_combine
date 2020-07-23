module Spree
  class ImageCombine < ApplicationRecord
    belongs_to :cropped_image
    belongs_to :block_position
    belongs_to :block_type

    accepts_nested_attributes_for :cropped_image
    accepts_nested_attributes_for :block_position
    accepts_nested_attributes_for :block_type

    def self.table_name_prefix
      'spree_image_combine_'
    end
  end
end
