class ResistorReadingsController < ApplicationController
  skip_before_action :verify_authenticity_token, only: :create

  def index
    @resistor_readings = ResistorReading.order(created_at: :desc)
  end

  def create
    authenticate!

    ResistorReading.create!(value: params[:resistor_value])
  end

  private

  def authenticate!
    authenticate_or_request_with_http_token do |token, _options|
      token = ENV["ARDUINO_REQUEST_TOKEN"]
    end
  end
end
