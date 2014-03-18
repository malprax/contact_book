json.array!(@newstudents) do |newstudent|
  json.extract! newstudent, :id, :name, :birth, :street, :religion, :contact_person, :gender
  json.url newstudent_url(newstudent, format: :json)
end
