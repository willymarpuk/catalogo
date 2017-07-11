class Modelo < ActiveRecord::Base
	has_many :marcas
	has_many :productos
end