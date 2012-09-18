class Homologacion < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :coordinador
  belongs_to :materia
  attr_accessible :razon, :estado, :comentarios
  
  def self.enviar_solicitud(homologacion)
    coordinador = homologacion.materia.maestria.coordinador
    coordinador.homologacions<<homologacion
  end
  
end
