module Admin::ImagesHelper
  def image_base_64_tag(image)
    return image_tag("webclip_image.jpg") if image.blank?
    tag(:img, src: "data:image/jpg;base64, #{image.try(:base64_string)}")
  end
  
  def display_image_type(image)
    image.type.blank? ? 'Portal Image' : image.type.to_s.titleize
  end
end
