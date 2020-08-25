Spree::BaseHelper.module_eval do
  def image_combine_tag(object, image_class = '')
    image = Spree::ImageCombine.fetch(object, controller_name)
    content_tag :picture do
      output =[]
      if image.blank?
        if object.is_a?(Spree::Product)
          main_image = product_image(object)
        else
          return nil
        end
      else
        output = Spree::CropperDimension.dimensions.map { |device, dimensions|
          content_tag :source, "", { media: "(max-width: #{ dimensions[:width] }px)", srcset: main_app.url_for(image.attachment.variant(crop: image.for(device)))}
        }
        main_image = image_tag(main_app.url_for(image.attachment.variant(crop: image.for(Spree::CropperDimension.largest))), class: image_class)
      end
      output << main_image
      safe_join(output, "\n")
    end
  end
end
