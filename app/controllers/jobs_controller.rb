class JobsController < ApplicationController

  def index
    @jobs = Job.all
  end

  def new
    @job = Job.new
  end
  
  def create
    j = Job.new
    j.enroll = params["job"]["enroll"]
    j.role_id = params["job"]["role_id"]
    j.department_id = params["job"]["department_id"]
    j.employee_id = params["job"]["employee_id"]
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
    @job.enroll = params["job"]["enroll"]
    @job.role_id = params["job"]["role_id"]
    @job.department_id = params["job"]["department_id"]
    @job.employee_id = params["job"]["employee_id"]
    @job.grosswage = params["job"]["grosswage"]
    @job.save
    
    redirect_to "/employees"
  end
  
  def destroy
    @job = Job.find_by(id: params[:id])
    @job.destroy
    redirect_to "/employees"
  end

end