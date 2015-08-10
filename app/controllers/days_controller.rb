class DaysController < ApplicationController
  
  def create
    @program = Program.find(params[:program_id])
    @day = @program.days.create(days_params)
    redirect_to program_path(@program)
  end

  def edit
    @program = Program.find(params[:program_id])
    @day = @program.days.find(params[:id])
  end

  def update
    @program = Program.find(params[:program_id])
    @day = @program.days.find(params[:id])

    if @day.update(days_params)
      redirect_to program_path(@program)
    else
      render 'edit'
    end  
  end

  def show
    @program = Program.find(params[:program_id])
    @day = @program.days.find(params[:id])
  end

  def destroy
    @program = Program.find(params[:program_id])
    @day = @program.days.find(params[:id])
    @day.destroy
    redirect_to program_path(@program)
  end

  private
    def days_params
      params.require(:day).permit(:day_number, :info, :program_id)
    end
end
