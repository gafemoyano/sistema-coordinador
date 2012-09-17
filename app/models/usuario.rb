class Usuario < ActiveRecord::Base
  has_one :estudiante
  has_one :coordinador
  attr_accessible :apellido, :documento, :login, :nombres, :tipo_documento, :tipo_usuario
end
