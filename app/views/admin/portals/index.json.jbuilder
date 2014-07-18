json.array!(@portals) do |admin_portal|
  json.extract! admin_portal, :id, :title, :logo_image_id, :bg_css, :bg_image_id, :layout, :font
  json.url admin_portal_url(admin_portal, format: :json)
end
