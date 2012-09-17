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
    programa = 
    @materias = Materia.
  end


  def edit
    @homologacion = Homologacion.find(params[:id])
  end


  def create
    @homologacion = Homologacion.new(params[:homologacion])
    @estudiante = Estudiante.find(params[:estudiante_id])
    respond_to do |format|
      if @homologacion.save
        flash[:notice] = 'Homologacion was successfully created.'
        redirect_to estudiante_url(@estudiante)
        #format.html { redirect_to @homologacion, notice: 'Homologacion was successfully created.' }
        #format.json { render json: @homologacion, status: :created, location: @homologacion }
      else
        render :action=>'new'
        #format.html { render action: "new" }
        #format.json { render json: @homologacion.errors, status: :unprocessable_entity }
      end
    end
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

    respond_to do |format|
      format.html { redirect_to homologacions_url }
      format.json { head :no_content }
    end
  end
end
