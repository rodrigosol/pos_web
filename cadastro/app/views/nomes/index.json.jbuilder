json.array!(@nomes) do |nome|
  json.extract! nome, :id, :idade, :email, :msg
  json.url nome_url(nome, format: :json)
end
