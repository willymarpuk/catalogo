json.array!(@productos) do |producto|
  json.extract! producto, :id, :nombre, :codigo, :descripcion, :precio_venta, :marca_id, :modelo_id, :categoria_id, :imagen
  json.url producto_url(producto, format: :json)
end
