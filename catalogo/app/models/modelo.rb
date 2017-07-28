class Modelo < ActiveRecord::Base
	has_many :marcas, dependent: :restrict_with_error
	has_many :productos, dependent: :restrict_with_error

	validates :descripcion,
		:presence => {
			message: 'Este campo es requerido'},
		:length => {
			:maximum => 50,
			:too_long => 'debe tener como maximo %{count} caracteres'}

	def nombre_modelo
    "#{descripcion}"
  	end
end