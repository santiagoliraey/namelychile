class AllController < ApplicationController
  def index
    @employees = Employee.all
    @roles = Role.all
  end
end