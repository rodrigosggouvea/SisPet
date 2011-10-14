class Cliente < ActiveRecord::Base
  validates :nome,    :presence => true
  validates :cnpj,    :presence => true
  validates :arquivo, :presence => true
end
