json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :idade, :email, :msg
  json.url pessoa_url(pessoa, format: :json)
end
