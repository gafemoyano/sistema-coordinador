class Pensum < ActiveRecord::Base
  belongs_to :maestria
  has_many :tipo_pensums
  attr_accessible :fecha_creacion, :nombre
end
