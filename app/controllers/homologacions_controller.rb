class HomologacionsController < ApplicationController

  def index
    @homologacions = Homologacion.all
    @estudiante = Estudiante.find(params[:estudiante_id])
    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @homologacions }
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
    #respond_to do |format|
    #  if @homologacion.save
    #    format.html { redirect_to @estudiante, notice: 'Solicitud enviada con exito' }
        #format.json { render json: @homologacion, status: :created, location: @homologacion }
    #  else
    #    redirect_to estudiante_url(params[:estudiante_id])
        #format.html { render action: "new" }
        #format.json { render json: @homologacion.errors, status: :unprocessable_entity }
    #  end
    # end
  end

  def update
    @homologacion = Homologacion.find(params[:id])
    @estudiante = Estudiante.find(params[:estudiante_id])
    respond_to do |format|
      if @homologacion.update_attributes(params[:homologacion])
        format.html { redirect_to @homologacion, notice: 'Homologacion was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @homologacion.errors, status: :unprocessable_entity }
      end
    end
  end


  def destroy
    @homologacion = Homologacion.find(params[:id])
    @homologacion.destroy

  end
end
