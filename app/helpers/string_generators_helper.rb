module StringGeneratorsHelper

  def generate_password(length, use_letters, use_numbers, use_symbols, use_uppercase, use_lowercase, easy_to_say, easy_to_write)
    letters = 'abcdefghijklmnopqrstuvwxyz'
    numbers = '0123456789'
    symbols = '!@#$%^&*()_+~`|}{[]:;?><,./-=\\'

    characters = ''
    characters += letters if use_letters && use_lowercase
    characters += letters.upcase if use_uppercase && use_letters
    characters += numbers if use_numbers
    characters += symbols if use_symbols

    if easy_to_say
      characters = 'abcdefghjkmnpqrstuvwxyzABCDEFGHJKLMNPQRSTUVWXYZ23456789'
    end

    if easy_to_write
      characters = 'abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'
    end

    password = ''
    length.times { password += characters.chars.sample }
    password
  end

end
