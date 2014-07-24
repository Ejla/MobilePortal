class HomeController < ApplicationController
  layout false
  def index
    @pages = Page.order(:name)
    @logo_image = Portal.first.logo_image
    @bg_image = Portal.first.bg_image
  end
end
