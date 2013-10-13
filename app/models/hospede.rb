class Hospede < ActiveRecord::Base

  def endereco
    "#{logradouro.split(" ").collect { |word| word.capitalize! }.join(' ')}, #{numero.capitalize!} #{complemento.capitalize!}"
  end
  def name=(name)
    @name = name.collect { |char| char.capitalize }.join
  end
  def cpf=(cpf)
    @cpf = sanitiza cpf
  end

  private
  def sanitiza(cpf)
    cpf.each_chr { |char| char.to_i.to_s }.join
  end

end