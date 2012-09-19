class ActualizarCarpetaEstudianteTransferenciaController < ApplicationController
  def index

  end
  def create
    
  end
  def show
    @idEstudiante = params[:idEstudiante]
    @idMaestria = params[:idMaestria]
    @fachadaPensums = FachadaPensums.new
    @materiasPensumOrigen =@fachadaPensums.obtenerMateriasVistasEstudianteAcordePensum(@idEstudiante, @idMaestria) 
  end
end
