class EstudiantesController < ApplicationController
  
  def index
    @estudiante = Estudiante.all
  end

  def show
    @estudiante = Estudiante.find(params[:id])
  end


  def new
    @estudiante = Estudiante.new
  end


  def edit
    @estudiante = Estudiante.find(params[:id])
  end


  def create
    @estudiante = Estudiante.find(params[:id])
  end

  def update
    @estudiante = Estudiante.find(params[:id])
  end


  def destroy
    @estudiante = Estudiante.find(params[:id])
  end
end
