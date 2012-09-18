class Estudiante < ActiveRecord::Base
  belongs_to :usuario
  has_many :estudiantemaestrias
  has_many :estudiantematerias
  has_many :inscripcions
  has_many :materia, :through => :inscripcions, :source => :inscribible, :source_type => "Materia" 
  has_many :maestria, :through => :inscripcions, :source => :inscribible, :source_type => "Maestria"
  attr_accessible :direccion, :foto, :telefono, :tipo
end
