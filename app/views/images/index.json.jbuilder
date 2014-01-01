json.array!(@images) do |image|
  json.extract! image, :title, :picture_file_name, :picture_content_type, :picture_file_size, :picture_updated_at
  json.url image_url(image, format: :json)
end
