FactoryGirl.define do
  factory :usuario do
    nombres 'Felipe'
    apellido'Moyano'
    documento '1020750333'
    login 'gf.moyano131'
    estudiante
  end
  
  factory :estudiante do
    direccion 'Direccion'
    telefono '987654321'
  end
  factory :coordinador, :aliases => [:coord] do
    apellido        'Fernandez'
    documento       '123456'
    login           'jp.fernandez'
    nombre          'Juan Pablo'
    tipo_documento  'cedula'
  end
  
  factory :materia do
    codigo  'MISIS-X'
    nombre  'Arquitectura de algo'
    maestria
  end
    
  factory :maestria do
    nombre  "Maestria en Ingeniera de Sistemas"
    codigo  "MISIS"
    coordinador   
    
    factory :maestria_con_materias do
      # posts_count is declared as an ignored attribute and available in
      # attributes on the factory, as well as the callback via the evaluator
      ignore do
        materias_count 5
      end
      # the after(:create) yields two values; the user instance itself and the
      # evaluator, which stores all values from the factory, including ignored
      # attributes; `create_list`'s second argument is the number of records
      # to create and we make sure the user is associated properly to the post
      after(:create) do |maestria, evaluator|
        FactoryGirl.create_list(:materia, evaluator.materias_count, maestria: maestria)
      end
    end
   end
  
end

