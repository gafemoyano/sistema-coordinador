require 'test_helper'

class LoginTest < ActiveSupport::TestCase
  
  test "login exitoso usuario coordinador" do
      usuario = Usuario.new
      #Se validan las credenciales del usuario
      autorizado = usuario.validarCredenciales('df.ordonez94', '123456', 'coordinador') 
      assert autorizado == false, 'No se cumplio el escenario de prueba'
  end
  
  test "login fallido usuario coordinador" do
      usuario = Usuario.new
      #Se validan las credenciales del usuario
      autorizado = usuario.validarCredenciales('df.ordonez94', '123','coordinador') 
      assert autorizado == true, 'No se cumplio el escenario de prueba'
  end
  
  test "login exitoso usuario estudiante" do
      usuario = Usuario.new
      #Se validan las credenciales del usuario
      autorizado = usuario.validarCredenciales('ce.diaz30', '123456', 'estudiante') 
      assert autorizado == false, 'No se cumplio el escenario de prueba'
  end
  
  test "login fallido usuario estudiante" do
      usuario = Usuario.new
      #Se validan las credenciales del usuario
      autorizado = usuario.validarCredenciales('ce.diaz30', '123','estudiante') 
      assert autorizado == true, 'No se cumplio el escenario de prueba'
  end
  
end