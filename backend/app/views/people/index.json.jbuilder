json.array!(@people) do |person|
  json.extract! person, :id, :name, :description, :birg
  json.url person_url(person, format: :json)
end
