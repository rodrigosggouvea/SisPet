class Ponto < ActiveRecord::Base
  has_many :horarios
  validates :data, :presence => true
  accepts_nested_attributes_for :horarios
  attr_accessible :horarios_attributes
end
