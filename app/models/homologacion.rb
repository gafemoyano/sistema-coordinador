class Homologacion < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :coordinador
  belongs_to :materia
  attr_accessible :razon
  
  def enviar_solicitud(homologacion)
    coordinardor = homologacion.materia.maestria.coordinador
    coordinador.homologacions<<homologacion
  end
  
end
