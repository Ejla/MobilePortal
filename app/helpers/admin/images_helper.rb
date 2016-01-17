module Admin::ImagesHelper
  def image_base_64_tag(image, image_attr = nil)
    return image_tag("webclip_image.jpg") if image.blank?
    tag(:img, src: "data:image/png;base64, #{image.try(:base64_string)}", style: (image_attr[:style] if image_attr), class: (image_attr[:class] if image_attr))
  end
  
  def display_image_type(image)
    image.type.blank? ? 'Portal Image' : image.type.to_s.titleize
  end
end
