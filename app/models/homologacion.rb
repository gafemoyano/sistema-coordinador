class Homologacion < ActiveRecord::Base
  belongs_to :estudiante
  belongs_to :materia
  attr_accessible :razon
end
