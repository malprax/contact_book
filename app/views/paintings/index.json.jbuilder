json.array!(@paintings) do |painting|
  json.extract! painting, :name, :gallery_id, :image
  json.url painting_url(painting, format: :json)
end
