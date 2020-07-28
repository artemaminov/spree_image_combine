module Spree
  module Admin
    class ImageCombineBlockTypesController < ResourceController
      def index
        if params[:type].present?
          type = Spree::ImageCombineBlockType.find(params[:type])
          if type
            objects = Object.const_get(type.model_class_name).all
            if request.xhr?
              respond_to do |format|
                format.json {
                  render json: {objects: objects}
                }
              end
            end
          end
        end
      end
    end
  end
end
