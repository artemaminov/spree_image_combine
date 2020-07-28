Spree::BaseHelper.module_eval do
  def image_combine_tag(object, image_class = '')
    image = Spree::ImageCombine.fetch(object, controller_name)
    content_tag :picture do
      if image.blank?
        return nil
      else
        output = Spree::CropperDevice.dimensions.map { |device, dimensions|
            content_tag :source, "", { media: "(max-width: #{ dimensions[:width] }px)", srcset: main_app.url_for(image.attachment.variant(crop: image.for(device)))}
        }
        output << [image_tag(main_app.url_for(image.attachment.variant(crop: image.for(Spree::CropperDevice.largest))), class: image_class)]
      end
      safe_join(output, "\n")
    end
  end
end
