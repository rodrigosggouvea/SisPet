class Horario < ActiveRecord::Base
  belongs_to :ponto
  belongs_to :funcionario

  validates :hora,   :presence => true, :inclusion => {:in => (0..23).to_a}
  validates :minuto, :presence => true, :inclusion => {:in => (0..59).to_a}
  validates :funcionario_id, :presence => true
end
