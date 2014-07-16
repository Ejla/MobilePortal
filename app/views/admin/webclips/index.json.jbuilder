json.array!(@webclips) do |webclip|
  json.extract! webclip, :id, :name, :link, :order, :description, :page_id
  json.url webclip_url(webclip, format: :json)
end
