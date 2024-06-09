class JsonValidatorsController < ApplicationController
  def index
    @data = [
      {
        color: "red",
        value: "#f00"
      },
      {
        color: "green",
        value: "#0f0"
      },
      {
        color: "blue",
        value: "#00f"
      },
      {
        color: "cyan",
        value: "#0ff"
      },
      {
        color: "magenta",
        value: "#f0f"
      },
      {
        color: "yellow",
        value: "#ff0"
      },
      {
        color: "black",
        value: "#000"
      }
    ]
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
