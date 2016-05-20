class EmployeesController < ApplicationController

  def index
    @employees = Employee.all
  end

  def new
    @employee = Employee.new
  end
  
  def create
    e = Employee.new
    e.name = params["employee"]["name"]
    e.ssn = params["employee"]["ssn"]
    e.birth = params["employee"]["birth"]
    e.enroll = params["employee"]["enroll"]
    e.division_id = params["employee"]["division_id"]
    e.department_id = params["employee"]["department_id"]
    e.healthplan = params["employee"]["healthplan"]
    e.grosswage = params["employee"]["grosswage"]
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
    @employee.enroll = params["employee"]["enroll"]
    @employee.division_id = params["employee"]["division_id"]
    @employee.department_id = params["employee"]["department_id"]
    @employee.healthplan = params["employee"]["healthplan"]
    @employee.grosswage = params["employee"]["grosswage"]
    @employee.save
    
    redirect_to "/employees"
  end
  
  def destroy
    @employee = Employee.find_by(id: params[:id])
    @employee.destroy
    redirect_to "/employees"
  end

end