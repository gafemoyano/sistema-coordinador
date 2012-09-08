class Maestria < ActiveRecord::Base
  belongs_to :usuario
  has_many :materia
  attr_accessible :codigo, :nombre
end
