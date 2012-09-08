class TipoPensum < ActiveRecord::Base
  belongs_to :pensum
  attr_accessible :cantidad, :descripcion
end
