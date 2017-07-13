class ProductoDetalle < ActiveRecord::Base
  belongs_to :proveedor
  belongs_to :producto
end
