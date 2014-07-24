module Admin::ImagesHelper
  def image_base_64_tag(image, size=:default)
    return image_tag("webclip_image.jpg") if image.blank?
    width = 100 if size == :default
    width = 300 if size == :large

    tag(:img, src: "data:image/jpg;base64, #{image.try(:base64_string)}", width: width )
  end
end
