class Marca < ActiveRecord::Base
  belongs_to :modelo
  has_many :productos
end
