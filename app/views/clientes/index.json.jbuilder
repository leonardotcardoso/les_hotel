json.array!(@clientes) do |cliente|
  json.extract! cliente, :nome, :cpf, :endereco, :telefone
  json.url cliente_url(cliente, format: :json)
end
