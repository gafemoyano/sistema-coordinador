class Maestria < ActiveRecord::Base
  belongs_to :usuario
  has_many :inscripcions, :as => :inscribible
  has_many :estudiantes, :through => :inscribible
  has_many :materia
  attr_accessible :codigo, :nombre
end
