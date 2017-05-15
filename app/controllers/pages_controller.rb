require "cipher"

class PagesController < ApplicationController
  def home
  end

  def results
    text_to_encrypt = params[:textencrypt]
    permutation_level = params[:permutation_level].to_i
    @encrypted_text = Cipher.encrypt(text_to_encrypt, permutation_level)
    if session[:number_of_encryptions].nil?
      session[:number_of_encryptions] = 1
    else
      session[:number_of_encryptions] += 1
    end
  end

  def about
  end

  def contact
  end

  def team
  end
end
