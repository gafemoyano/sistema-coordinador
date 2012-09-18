class Materia < ActiveRecord::Base
  belongs_to :maestria
  has_and_belongs_to_many :tipo_pensums
  attr_accessible :codigo, :nombre, :maestria
end
