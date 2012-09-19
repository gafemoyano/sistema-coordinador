class Usuario < ActiveRecord::Base
  attr_accessible :apellido, :documento, :login, :nombres, :tipo_documento, :tipo_usuario, :password
  has_one :estudiante
  
  def validarCredenciales(usuario, password, rol)
    @usuario = Usuario.find(:first, :conditions => [ "login = ? and password = ? and tipo_usuario = ?", usuario, password, rol])
    if @usuario
      return true
    else
      return false
    end
  end
end
