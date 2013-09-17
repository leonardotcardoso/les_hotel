class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nome
      t.long :cpf
      t.string :endereco
      t.long :telefone

      t.timestamps
    end
  end
end
