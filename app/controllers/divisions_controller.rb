class DivisionsController < ApplicationController

  def index
    @divisions = Division.all
  end

  def new
    @division = Division.new
  end
  
  def create
    d = Division.new
    d.name = params["division"]["name"]
    d.save

    redirect_to "/divisions"

  end
  
  def show
    @division = Division.find_by(id: params[:id])
  end
  
  def edit
    @division = Division.find_by(id: params[:id])
  end
  
  def update
    @division = Division.find_by(id: params[:id])
    @division.name = params["division"]["name"]
    @division.save
    
    redirect_to "/divisions"
  
  end
  
  def destroy
    @division = Division.find_by(id: params[:id])
    @division.destroy
    redirect_to "/divisions"
  end

end
