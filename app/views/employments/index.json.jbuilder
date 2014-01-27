json.array!(@employments) do |employment|
  json.extract! employment, :title, :info, :image, :writer
  json.url employment_url(employment, format: :json)
end
