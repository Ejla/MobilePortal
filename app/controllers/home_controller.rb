class HomeController < ApplicationController
  layout false
  def index
    @pages = Page.order(:name)
    @logo_image = PortalSetting.first.logo_image
    @bg_image = PortalSetting.first.bg_image
  end
end
