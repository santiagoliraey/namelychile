class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end
  
  def create
    j = Job.new
    j.name = params["job"]["name"]
    j.enroll = params["job"]["enroll"]
    j.division_id = params["job"]["division_id"]
    j.department_id = params["job"]["department_id"]
    j.employee_id = params["job"]["employee_id"]
    j.healthplan = params["job"]["healthplan"]
    j.grosswage = params["job"]["grosswage"]
    j.save

    redirect_to "/employees"

  end
  
  def show
    @job = Job.find_by(id: params[:id])
  end
  
  def edit
    @job = Job.find_by(id: params[:id])
  end
  
  def update
    @job = Job.find_by(id: params[:id])
    @job.name = params["job"]["name"]
    @job.enroll = params["job"]["enroll"]
    @job.division_id = params["job"]["division_id"]
    @job.department_id = params["job"]["department_id"]
    @job.healthplan = params["job"]["healthplan"]
    @job.grosswage = params["job"]["grosswage"]
    @job.save
    
    redirect_to "/employees"
  end
  
  def destroy
    @job = Job.find_by(id: params[:id])
    @job.destroy
    redirect_to "/Employees"
  end

end