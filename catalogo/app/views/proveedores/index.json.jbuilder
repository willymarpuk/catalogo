json.array!(@proveedores) do |proveedor|
  json.extract! proveedor, :id, :descripcion, :direccion, :sucursal, :vendedor, :telefono, :celular, :email
  json.url proveedor_url(proveedor, format: :json)
end
