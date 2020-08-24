module Spree
  class ImageCombine < Spree::Base
    has_one :cropped_image, as: :viewable, dependent: :destroy, class_name: 'Spree::CroppedImage'
    has_many :images_positions, dependent: :destroy, class_name: 'Spree::ImagesPosition', inverse_of: :image_combine
    has_many :block_positions, dependent: :destroy, :class_name => 'Spree::ImageCombineBlockPosition', through: :images_positions, inverse_of: :image_combines

    accepts_nested_attributes_for :cropped_image
    accepts_nested_attributes_for :images_positions
    accepts_nested_attributes_for :block_positions

    scope :position, ->(controller_name, id) { where('spree_image_combine_block_positions.controller_name' => controller_name, 'spree_image_combine_block_positions.anchor_uid' => id) }
    scope :type, ->(model_class_name) { where('spree_image_combine_block_types.model_class_name' => model_class_name) }

    after_save :build_croppers

    def self.fetch(object, controller_name)
      type = Spree::ImageCombineBlockType.find_by_model_class_name(object.class.name)
      return if type.nil?
      position = joins(:block_positions).where("spree_image_combine_block_positions.controller_name": controller_name, "spree_image_combine_block_positions.block_id": object.id, "spree_image_combine_block_positions.block_type_id": type.id).first
      return position.cropped_image unless position.blank?
      false
    end

    def build_croppers

    end

  end
end
