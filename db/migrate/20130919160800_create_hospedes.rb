class CreateHospedes < ActiveRecord::Migration
  def change
    create_table :hospedes do |t|
      t.integer :cpf
      t.string :nome
      t.string :logradouro
      t.string :numero
      t.string :complemento
      t.string :bairro
      t.string :cidade
      t.string :estado

      t.timestamps
    end
  end
end
