class EmployeesController < ApplicationController
    def index
        # byebug
    end

    def update
        @employee = Employee.find(params[:id])
        # byebug
        @employee.update!(employee_params(params))
        byebug
        redirect_to employee_path(@employee)
    end

    def new
    end

    def show
        @employee = Employee.find(params[:id])

    end

    def create
        # @dog = Dog.find(params[:dog_id])
        @new_employee = Employee.create!(employee_params(params))
        redirect_to employee_path(@new_employee)
    end

    def edit
        @employee = Employee.find(params[:id])
    end

    def employee_params(params)
        # byebug
        params.require(:employee).permit(:first_name, :last_name, :alias, :title, :office, :dog_id)
    end
end
