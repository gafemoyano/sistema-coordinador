class Estudiante < ActiveRecord::Base
  belongs_to :usuario
  attr_accessible :direccion, :foto, :telefono, :tipo
end
