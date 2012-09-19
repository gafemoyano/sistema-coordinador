class Coordinador < ActiveRecord::Base
 belongs_to :usuario
 has_one :maestria
 has_many :homologacions
 attr_accessible :apellido, :documento, :login, :nombre, :tipo_documento
end
