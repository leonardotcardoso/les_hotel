class Hospede < ActiveRecord::Base

  def endereco
    "#{logradouro.split(" ").collect { |word| word.capitalize! }.join(' ')}, #{numero.capitalize!} #{complemento.capitalize!}"
  end

end
