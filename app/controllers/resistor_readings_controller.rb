class ResistorReadingsController < ApplicationController
  def index
    @resistor_readings = ResistorReading.order(created_at: :desc)
  end

  def create
    ResistorReading.create!(value: params[:resistor_value])
  end
end
