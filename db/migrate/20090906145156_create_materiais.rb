class CreateMateriais < ActiveRecord::Migration
  def self.up
    create_table :materiais do |t|
      t.string :nome
      t.integer :quantidade
      t.float :valor
      t.date :data_da_compra
      t.integer :fornecedor_id

      t.timestamps
    end
  end

  def self.down
    drop_table :materiais
  end
end

