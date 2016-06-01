class RolesController < ApplicationController
  
  def index
    @roles = Role.all
    @employees = Employee.all
  end
  
  def show
    @role = Role.find_by(id: params[:id])
  end

  def new
    @role = Role.new
  end
  
  def create
    r = Role.new
    r.name = params["role"]["name"]
    r.save

    redirect_to "/divisions"
    
  end
  
  def edit
    @role = Role.find_by(id: params[:id])
  end
  
  def update
    @role = Role.find_by(id: params[:id])
    @role.name = params["role"]["name"]
    @role.save
    
    redirect_to "/divisions"
  end
  
  def destroy
    @role = Role.find_by(id: params[:id])
    @role.destroy
    redirect_to "/divisions"
  end
  
  

end
