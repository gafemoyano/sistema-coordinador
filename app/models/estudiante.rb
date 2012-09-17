class Estudiante < ActiveRecord::Base
  belongs_to :usario
  attr_accessible :direccion, :foto, :telefono, :tipo
end
