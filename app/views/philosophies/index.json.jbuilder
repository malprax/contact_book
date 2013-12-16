json.array!(@philosophies) do |philosophy|
  json.extract! philosophy, :input_text
  json.url philosophy_url(philosophy, format: :json)
end
