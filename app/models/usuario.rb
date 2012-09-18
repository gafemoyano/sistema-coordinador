class Usuario < ActiveRecord::Base
  has_one :estudiante
  attr_accessible :apellido, :documento, :login, :nombres, :tipo_documento, :tipo_usuario
end
