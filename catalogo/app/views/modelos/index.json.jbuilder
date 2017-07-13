json.array!(@modelos) do |modelo|
  json.extract! modelo, :id, :descripcion
  json.url modelo_url(modelo, format: :json)
end
