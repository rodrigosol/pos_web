json.array!(@people) do |person|
  json.extract! person, :id, :name, :description, :birth
  json.url person_url(person, format: :json)
end
