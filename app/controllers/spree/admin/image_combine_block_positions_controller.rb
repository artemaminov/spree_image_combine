module Spree
  module Admin
    class ImageCombineBlockPositionsController < ResourceController
      def edit
          @objects = Object.const_get(@image_combine_block_position.block_type.model_class_name).all
      end

    end
  end
end
