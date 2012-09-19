require 'test_helper'

class FachadaPensumsTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  
  test "prueba obtenerMateriasVistasEstudianteAcordePensum" do
      fachPensum = FachadaPensums.new
      #Se prueba con estudiante lisa simpson y maestria en ing. sistemas y computacion
      listado = fachPensum.obtenerMateriasVistasEstudianteAcordePensum(1,  1) 
      print listado
      @paso = false
      listado.values.each do |elem|
        elem.values.each do |materia|
          assert materia.codigo != 'MISIS-4001', 'No se cumplio el escenario de prueba: Se encontro una materia (MISIS-4001) que Lisa Simpson no ha visto'
          if (materia.codigo == 'MISIS-4000') then
            @paso = true  
          end
        end
      end
      assert @paso == true, 'No se cumplio el escenario de prueba: No se encontro la materia MISIS-4000 para Lisa Simpson'  
      begin
        listado2 = fachPensum.obtenerMateriasVistasEstudianteAcordePensum(0,  1)
        assert false, 'No se genero correctamente la excepcion cuando el estudiante no existe'
      rescue
        assert true, 'No se genero correctamente la excepcion cuando el estudiante no existe'
      end
      begin
        listado2 = fachPensum.obtenerMateriasVistasEstudianteAcordePensum(1,  -1)
         assert listado2.length == 0, 'No trae los datos vacios cuando la maestria no existe'
      rescue
      end
      begin
        listado2 = fachPensum.obtenerMateriasVistasEstudianteAcordePensum(0,  0)
        assert false, 'No se genero correctamente la excepcion cuando la maestria y el estudiante no existe'
      rescue
        assert true, 'No se genero correctamente la excepcion cuando la maestria y el estudiante no existe'
      end
  end
end