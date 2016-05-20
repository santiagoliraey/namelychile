class DepartmentsController < ApplicationController
  
  def show
    @department = Department.find_by(id: params[:id])
  end

  def new
    @department = Department.new
  end
  
  def create
    m = Department.new
    m.name = params["department"]["name"]
    m.division_id = params["department"]["division_id"]
    m.save

    redirect_to "/divisions"
  end
  
  def edit
    @department = Department.find_by(id: params[:id])
  end
  
  def update
    @department = Department.find_by(id: params[:id])
    @department.name = params["department"]["name"]
    @department.division_id = params["department"]["division_id"]
    @department.save
    
    redirect_to "/divisions"
  end
  
  def destroy
    @department = Department.find_by(id: params[:id])
    @department.destroy
    redirect_to "/divisions"
  end
  
  

end
