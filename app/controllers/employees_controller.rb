class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
    @departments = Department.all
    @divisions = Division.all
    @jobs = Job.all
  end

  def new
    @employee = Employee.new
  end
  
  def create
    e = Employee.new
    e.name = params["employee"]["name"]
    e.ssn = params["employee"]["ssn"]
    e.birth = params["employee"]["birth"]
    e.healthplan = params["employee"]["healthplan"]
    e.image_url = params["employee"]["image_url"]
    e.save

    redirect_to "/employees"

  end
  
  def show
    @employee = Employee.find_by(id: params[:id])
  end
  
  def edit
    @employee = Employee.find_by(id: params[:id])
  end
  
  def update
    @employee = Employee.find_by(id: params[:id])
    @employee.name = params["employee"]["name"]
    @employee.ssn = params["employee"]["ssn"]
    @employee.birth = params["employee"]["birth"]
    @employee.image_url = params["employee"]["image_url"]
    @employee.healthplan = params["employee"]["healthplan"]
    @employee.save
    
    redirect_to "/employees"
  end
  
  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    redirect_to "/employees"
  end

end