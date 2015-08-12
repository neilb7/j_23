class ProgramsController < ApplicationController
  respond_to :html
  def index
    @programs = Program.all
    respond_with (@programs)
  end

  def new
    @program = Program.new
  end

  def create
    @program = Program.new(program_params)
    @program.save
    redirect_to @program
  end

  def show
    @program = Program.find(params[:id])
  end

  def edit
    @program = Program.find(params[:id])
  end

  def update
    @program = Program.find(params[:id])

    if @program.update(program_params)
      redirect_to @program
    else
      render 'edit'
    end
  end

  def destroy
    @program = Program.find(params[:id])
    @program.destroy
    redirect_to programs_path
  end

  private
    def program_params
      params.require(:program).permit(:name, :desc, days: [:day_number, :info])
    end
end
