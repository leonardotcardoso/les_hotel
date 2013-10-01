json.array!(@hospedes) do |hospede|
  json.extract! hospede, :cpf, :nome, :logradouro, :numero, :complemento, :bairro, :cidade, :estado
  json.url hospede_url(hospede, format: :json)
end