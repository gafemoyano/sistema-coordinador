class HomologacionsController < ApplicationController
  def index
    if params[:coordinador_id]
    @coordinador = Coordinador.find(params[:coordinador_id])
    @homologacions = @coordinador.homologacions
    elsif params[:estudiante_id]
      @estudiante = Estudiante.find(params[:estudiante_id])
      @homologacions = @estudiante.homologacions
    end
  end

  def show
    @homologacion = Homologacion.find(params[:id])
    @estudiante = Estudiante.find(params[:estudiante_id])
    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @homologacion }
    end
  end

  def new
    @homologacion = Homologacion.new
    @estudiante = Estudiante.find(params[:estudiante_id])
    @materias = @estudiante.maestria.first.materia
  end

  def edit
    @homologacion = Homologacion.find(params[:id])
  end

  def create
    @materia_seleccionada = Materia.new
    @homologacion = Homologacion.new(params[:homologacion])
    @estudiante = Estudiante.find(params[:estudiante_id])
    @homologacion.estudiante = @estudiante
    @homologacion.materia = Materia.find(params[:select_materia][:materia_id])
    @homologacion.estado = 'pendiente'
    Homologacion.enviar_solicitud @homologacion
    if @homologacion.save
      flash[:notice] = "Solicitud enviada exitosamente"
      redirect_to @estudiante
    else
      flash[:notice] = "Error al enviar solicitud"
      redirect_to @estudiante
    end
  end

  def update
    @homologacion = Homologacion.find(params[:id])

    if @homologacion.update_attributes(params[:homologacion])
      flash[:notice] = "Solicitud enviada exitosamente"
      redirect_to @homologacion.coordinador
    else
      flash[:notice] = "Error al enviar solicitud"
      render :edit
    end

  end

  def destroy
    @homologacion = Homologacion.find(params[:id])
    @homologacion.destroy

  end
end
