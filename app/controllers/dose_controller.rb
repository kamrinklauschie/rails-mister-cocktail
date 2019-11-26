class DoseController < ApplicationController
  def create
    @dose = Dose.create(dose_params)
  end

  def new
    @dose = Dose.new
  end

  def destroy
    @dose.destroy
  end
end
