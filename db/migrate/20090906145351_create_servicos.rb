class CreateServicos < ActiveRecord::Migration
  def self.up
    create_table :servicos do |t|
      t.string :tipo
      t.string :nome_do_prestador
      t.float :valor_diario
      t.float :valor_total

      t.timestamps
    end
  end

  def self.down
    drop_table :servicos
  end
end

