class HomeController < ApplicationController
  layout false
  def index
    @pages = Page.order(:name)
  end
end
