module Admin::PagesHelper
  def available_webclips_for(page)
    Webclip.all - page.webclips.to_a
  end
end
