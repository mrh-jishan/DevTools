class StringGeneratorsController < ApplicationController
  def index
  end

  def create
    respond_to { |format| format.turbo_stream }
  end
end
