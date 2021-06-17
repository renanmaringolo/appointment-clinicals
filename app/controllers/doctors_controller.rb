class DoctorsController < ApplicationController
  before_action :doctor_finder, only: %i(edit update destroy)
  
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

  def edit; end

  def update
    if @doctor.update(doctor_params)
      flash[:notice] = 'Médico atualizado com sucesso.'
      redirect_to @doctor
    else
      render :edit
    end
  end

  def destroy
    if @doctor.destroy
      flash[:notice] = 'Perfil excluído com sucesso.'
      redirect_to doctors_path
    else
      flash[:alert] = 'Médico não pôde ser excluído por algum motivo'
      redirect_to doctors_path
    end
  end

  private

  def doctor_finder
    @doctor = Doctor.find(params[:id])
  end

  def doctor_params
    params.require(:doctor).permit %i(id name crm crm_uf)
  end
end
