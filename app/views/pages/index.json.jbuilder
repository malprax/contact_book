json.array!(@pages) do |page|
  json.extract! page, :name, :input_text, :slug, :parent_id
  json.url page_url(page, format: :json)
end
