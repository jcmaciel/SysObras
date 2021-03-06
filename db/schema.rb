# This file is auto-generated from the current state of the database. Instead of editing this file, 
# please use the migrations feature of Active Record to incrementally modify your database, and
# then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your database schema. If you need
# to create the application database on another system, you should be using db:schema:load, not running
# all the migrations from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20090906145351) do

  create_table "fornecedores", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "telefone"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "materiais", :force => true do |t|
    t.string   "nome"
    t.integer  "quantidade"
    t.float    "valor"
    t.date     "data_da_compra"
    t.integer  "fornecedor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "servicos", :force => true do |t|
    t.string   "tipo"
    t.string   "nome_do_prestador"
    t.float    "valor_diario"
    t.float    "valor_total"
    t.string   "empreitada"
    t.string   "objeto_da_empreitada"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
