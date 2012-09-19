class Estudiantemateria < ActiveRecord::Base
  # attr_accessible :title, :body
  belongs_to :estudiante
  belongs_to :materia
  belongs_to :tipo_pensum
  attr_accessible :estado, :estudiante, :materia, :tipo_pensum
end
