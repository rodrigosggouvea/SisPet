class Funcionario < ActiveRecord::Base
  has_many :horarios
  validates :nome, :presence => true
  validates :data_admissao, :presence => true
  end
