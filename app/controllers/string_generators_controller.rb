class StringGeneratorsController < ApplicationController
  def index
    @data = {
      :password_version => "v1",
      :password_length => "22",
      :include_numbers => "1",
      :include_lowercase => "1",
      :include_uppercase => "1",
      :begin_with_letter => "1",
      :include_symbols => "1",
      :symbols => "!\"#$%&'()*+,-./:;<=>?@[\\]^_`{|}~",
      :no_similar_characters => "1",
      :no_duplicate_characters => "1",
      :no_seq_characters => "1",
      :auto_generate_first_call => "1",
      :quantity => "5",
      :save_my_preference => "0"
    }
  end

  def create
    @password_version = /v2/i.match(params[:commit].to_s) ? "v2" : "v1"
    @data = validators_params.to_h.merge(password_version: @password_version).symbolize_keys
    respond_to { |format| format.turbo_stream }
  end

  def validators_params
    params.require(:string_generators).permit(:password_length,
                                              :include_numbers,
                                              :include_lowercase,
                                              :include_uppercase,
                                              :begin_with_letter,
                                              :include_symbols,
                                              :no_similar_characters,
                                              :no_duplicate_characters,
                                              :no_seq_characters,
                                              :auto_generate_first_call,
                                              :quantity,
                                              :save_my_preference
    )
  end

end
