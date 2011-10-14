# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20110903105809) do

  create_table "clientes", :force => true do |t|
    t.string   "cnpj"
    t.string   "nome"
    t.string   "arquivo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "despesas", :force => true do |t|
    t.float    "valor"
    t.string   "nome"
    t.text     "descricao"
    t.date     "vencimento"
    t.boolean  "paga"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "funcionarios", :force => true do |t|
    t.string   "nome"
    t.date     "data_admissao"
    t.float    "salario"
    t.date     "data_nasc"
    t.text     "endereco"
    t.text     "historico"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "horarios", :force => true do |t|
    t.integer  "hora"
    t.integer  "minuto"
    t.integer  "funcionario_id"
    t.string   "tipo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "orcamentos", :force => true do |t|
    t.string   "nome_empresa"
    t.string   "cnpj_empresa"
    t.float    "valor"
    t.date     "data"
    t.text     "descricao"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "pontos", :force => true do |t|
    t.date     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
