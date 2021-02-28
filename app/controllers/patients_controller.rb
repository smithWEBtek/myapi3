class PatientsController < ApplicationController
  def index
    @patients = Patient.all.first(5)
    respond_to do |format|
      format.html { render :index }
      format.json { render json: @patients }
    end
  end

  def show
    @patient = Patient.find(params[:id])
    render json: @patient
  end
end