json.array!(@productos_detalles) do |producto_detalle|
  json.extract! producto_detalle, :id, :precio_compra, :fecha_compra, :proveedor_id, :producto_id
  json.url producto_detalle_url(producto_detalle, format: :json)
end
