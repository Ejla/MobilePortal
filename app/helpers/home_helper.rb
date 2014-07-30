module HomeHelper
  def portal_header
    if @logo_image.present? 
      image_base_64_tag @logo_image
    elsif PortalSetting.first.try(:title).present?
      PortalSetting.first.title
    else
      'My Mobile Portal'
    end
  end
  
  def portal_webclips_layout(page)
    if PortalSetting.first.layout == "thumbs"
      render 'thumbs', page: page
    else
      render 'list', page: page
    end
  end
  def portal_body_theme
    prefix = PortalSetting.first.theme.present? ? PortalSetting.first.theme : 'default'
    "#{prefix}_theme"
  end
end
