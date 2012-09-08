class Horario < ActiveRecord::Base
  belongs_to :materia
  attr_accessible :dia, :hora_final, :hora_inicial
end
