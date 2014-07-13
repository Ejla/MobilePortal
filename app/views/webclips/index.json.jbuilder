json.array!(@webclips) do |webclip|
  json.extract! webclip, :id, :name, :link, :order, :description, :category_id
  json.url webclip_url(webclip, format: :json)
end
