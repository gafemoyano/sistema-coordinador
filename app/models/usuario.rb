class Usuario < ActiveRecord::Base
  
  attr_accessible :apellido, :documento, :login, :nombres, :tipo_documento, :tipo_usuario, :password
end
