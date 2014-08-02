json.array!(@images) do |image|
  json.extract! image, :id, :base64_string, :width, :height, :name, :tags
  json.url image_url(image, format: :json)
end
