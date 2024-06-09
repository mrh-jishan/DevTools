class StringGeneratorsController < ApplicationController
  def index
  end

  def create
    puts "---------#{validators_params}"
    respond_to { |format| format.turbo_stream }
  end

  def validators_params
    params.require(:string_generators).permit(:category,
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
