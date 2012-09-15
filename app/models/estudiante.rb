class Estudiante < ActiveRecord::Base
  belongs_to :usuario
  has_many :estudiantemaestrias
  has_many :estudiantematerias
  attr_accessible :direccion, :foto, :telefono, :tipo, :usuario
end
