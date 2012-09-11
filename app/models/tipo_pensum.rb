class TipoPensum < ActiveRecord::Base
  belongs_to :pensum
  has_many :materias
  attr_accessible :cantidad, :descripcion
end
