class Proveedor < ActiveRecord::Base
	has_many :productos_detalles
end
