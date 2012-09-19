class Maestria < ActiveRecord::Base
  belongs_to :coordinador
  has_many :inscripcions, :as => :inscribible
  has_many :estudiantes, :through => :inscripcions
  has_many :materia, :class_name => "Materia"
  attr_accessible :codigo, :nombre
end
