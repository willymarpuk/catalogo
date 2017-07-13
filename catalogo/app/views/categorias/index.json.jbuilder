json.array!(@categorias) do |categoria|
  json.extract! categoria, :id, :descripcion
  json.url categoria_url(categoria, format: :json)
end
