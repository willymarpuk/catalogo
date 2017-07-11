class Producto < ActiveRecord::Base
  belongs_to :marca
  belongs_to :modelo
  belongs_to :categoria
  has_many :productos_detalles
end
