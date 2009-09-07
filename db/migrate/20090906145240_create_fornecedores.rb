class CreateFornecedores < ActiveRecord::Migration
  def self.up
    create_table :fornecedores do |t|
      t.string :nome
      t.string :endereco
      t.string :telefone

      t.timestamps
    end
  end

  def self.down
    drop_table :fornecedores
  end
end
