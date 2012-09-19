class CoordinadorsController < ApplicationController
  # GET /coordinadors
  # GET /coordinadors.json
  def index
    @coordinadors = Coordinador.all
  end

  # GET /coordinadors/1
  # GET /coordinadors/1.json
  def show
    @coordinador = Coordinador.find(params[:id])
  end

  def homologaciones
    @coordinador = Coordinador.find(params[:id])
    @homologaciones = @coordinador.homologacions

  end

  # GET /coordinadors/new
  # GET /coordinadors/new.json
  def new
    @coordinador = Coordinador.new
    @maestrias = Maestria.all
  end

  def edit
    @maestrias = Maestria.all
    @coordinador = Coordinador.find(params[:id])
  end

  def create
    @coordinador = Coordinador.new(params[:coordinador])
    @coordinador.maestria = Maestria.find(params[:select_maestria][:maestria_id])
    if @coordinador.save
      flash[:notice] = "Solicitud enviada exitosamente"
      redirect_to @coordinador
    else
      flash[:notice] = "Error al enviar solicitud"
      render :new
    end
  end


  def update
    @coordinador = Coordinador.find(params[:id])
    @coordinador.maestria = Maestria.find(params[:select_maestria][:maestria_id])

    if @coordinador.update_attributes(params[:coordinador])
      flash[:notice] = "Solicitud enviada exitosamente"
      redirect_to @coordinador
    else
      flash[:notice] = "Error al enviar solicitud"
      render :edit
    end

  end

  # DELETE /coordinadors/1
  # DELETE /coordinadors/1.json
  def destroy
    @coordinador = Coordinador.find(params[:id])
    @coordinador.destroy

    respond_to do |format|
      format.html { redirect_to coordinadors_url }
      format.json { head :no_content }
    end
  end
end
