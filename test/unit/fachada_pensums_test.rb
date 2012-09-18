require 'test_helper'

class FachadaPensumsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "prueba obtenerMateriasVistasEstudianteAcordePensum" do
      fachPensum = FachadaPensums.new
      #Se prueba con estudiante lisa simpson y maestria en ing. sistemas y computacion
      listado = fachPensum.obtenerMateriasVistasEstudianteAcordePensum(1,  1) 
      @paso = false
      listado.values.each do |elem|
        elem.values.each do |materia|
          if (materia.codigo == 'MISIS-4000') then
            @paso = true
          end
        end
      end
      assert @paso == true, 'No se cumplio el escenario de prueba'  
  end
end