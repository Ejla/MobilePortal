json.array!(@pages) do |page|
  json.extract! page, :id, :name, :webclip_id
  json.url page_url(page, format: :json)
end