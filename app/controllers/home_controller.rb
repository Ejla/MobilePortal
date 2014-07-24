class HomeController < ApplicationController
  layout false
  def index
    @pages = Page.order(:name)
    setting = PortalSetting.first
    @logo_image = setting.logo_image
    @bg_image = setting.bg_image
  end
end
