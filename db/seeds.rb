# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


usuarios = Usuario.create([{apellido: 'Simpson', documento: '73876271', login: 'lsimpson', nombres: 'Lisa'}, {apellido: 'Diaz', documento: '93829728', login: 'cdiaz', nombres: 'Carlos'}])
maestrias = Maestria.create([{codigo: 'MISIS', nombre: 'Maestria en Ingenieria de Sistemas'}, {codigo: 'MATI', nombre: 'Maestria en tecnologias de informacion'}])
pensums = Pensum.create([{fecha_creacion: Date.new(2012,9,15), nombre: 'Pensum MISIS 1', maestria: maestrias.first}, {fecha_creacion: Date.new(2012,9,15), nombre: 'Pensum MATI 1', maestria: maestrias.last}])
tipospensumMisis = TipoPensum.create([{cantidad: 3, descripcion: 'Obligatorias', pensum: pensums.first}, {cantidad: 3, descripcion: 'Del Area', pensum: pensums.first}, {cantidad: 1, descripcion: 'Otra maestria', pensum: pensums.first}])
tipospensumMati = TipoPensum.create([{cantidad: 3, descripcion: 'Obligatorias basicas', pensum: pensums.last}, {cantidad: 2, descripcion: 'Profundizacion', pensum: pensums.last}, {cantidad: 1, descripcion: 'Materias MISIS', pensum: pensums.last}])
materiasMisis = Materia.create([{codigo: 'MISIS-4000', nombre: 'Tesis 1', maestria: maestrias.first}, {codigo: 'MISIS-4001', nombre: 'Tesis 2', maestria: maestrias.first}, {codigo: 'MISIS-4002', nombre: 'Tutorial', maestria: maestrias.first}, {codigo: 'MISIS-4003', nombre: 'Tutorial especial', maestria: maestrias.first}, {codigo: 'MISIS-4004', nombre: 'Arquitecturas de datos', maestria: maestrias.first}])
materiasMati = Materia.create([{codigo: 'MATI-4000', nombre: 'Tesis 1', maestria: maestrias.last}, {codigo: 'MATI-4001', nombre: 'Tesis 2', maestria: maestrias.last}, {codigo: 'MATI-4002', nombre: 'Tutorial', maestria: maestrias.last}, {codigo: 'MATI-4003', nombre: 'Tutorial especial', maestria: maestrias.last}, {codigo: 'MATI-4004', nombre: 'Procesos agiles de desarrollo de software', maestria: maestrias.last}])
estudiantes =  Estudiante.create([{direccion: 'Avenida siempre viva no. 221', telefono: '3323223', tipo: 'maestria'}])
Usuario.first.estudiante = estudiantes.first
estudiantesmaestrias = Estudiantemaestria.create([{estado:'En curso',carpeta:'Carpeta MISIS Lisa Simpson', estudiante: estudiantes.first, maestria: maestrias.first, pensum: pensums.first }])

