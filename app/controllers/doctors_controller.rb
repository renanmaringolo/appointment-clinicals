class DoctorsController < ApplicationController
  def new
    @doctor = Doctor.new
  end

  def show
    @doctor = Doctor.find(params[:id])
  end

  def index
    @doctors = Doctor.all
  end

  def create
    @doctor = Doctor.new(doctor_params)

    if @doctor.save
      flash[:notice] = 'Médico cadastrado com sucesso!'
      redirect_to doctors_path
    else
      render :new
    end
  end

  private

  def doctor_params
    params.require(:doctor).permit %i(id name crm crm_uf)
  end
end
