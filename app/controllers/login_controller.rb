class LoginController < ApplicationController 
  # GET /login
  def index
    session[:login] = nil
  end
  
  # GET /login
  def create
    session[:login] = nil
    @usuario = Usuario.find(:first, :conditions => [ "login = ? and password = ?", params[:login], params[:password]])
    if @usuario
      if @usuario.tipo_usuario == "coordinador"
        session[:login] = params[:login]
        redirect_to menucoordinadores_path
      else
        if @usuario.tipo_usuario == "estudiante"
          session[:login] = params[:login]
          redirect_to menuestudiantes_path
        else
          flash[:notice] = "El usuario no tiene rol asociado"
          redirect_to :action => index
        end
      end
    else
      flash[:notice] = "Credeniales no validas, por favor intente nuevamente"
      redirect_to :action => index
    end
  end
end
