class Materia < ActiveRecord::Base
  belongs_to :maestria
  attr_accessible :codigo, :nombre
end
