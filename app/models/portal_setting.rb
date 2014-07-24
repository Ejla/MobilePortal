class PortalSetting < ActiveRecord::Base
  belongs_to :logo_image, class_name: "Image", foreign_key: "logo_image_id"
  belongs_to :bg_image,   class_name: "Image", foreign_key: "bg_image_id"
end
