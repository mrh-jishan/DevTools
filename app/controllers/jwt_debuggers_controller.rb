class JwtDebuggersController < ApplicationController
  def index
    @token = "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJzdWIiOiIxMjM0NTY3ODkwIiwibmFtZSI6IkpvaG4gRG9lIiwiaWF0IjoxNTE2MjM5MDIyLCJkZmdkZiI6ImRmZ2RmIn0.uGzBmkf9icJR5LP6N1Ytkf9GB_EWURPNsUZDzHdc7aQ"
  end

  def create
    # @data = validators_params[:json_input]
    respond_to { |format| format.turbo_stream }
  end

end
