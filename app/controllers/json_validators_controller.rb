class JsonValidatorsController < ApplicationController
  def index
  end

  def create
    @data = validators_params[:json_input]
    respond_to { |format| format.turbo_stream }
  end

  protected

  def validators_params
    params.require(:json_validators).permit(:json_input)
  end

end
