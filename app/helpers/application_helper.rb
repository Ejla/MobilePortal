module ApplicationHelper
  
  def li_active_if_current(title, path)    
    if current_page? path
      content_tag :li, link_to(title, path), class: "active"
    else
      content_tag :li, link_to(title, path)
    end
  end
  
end
