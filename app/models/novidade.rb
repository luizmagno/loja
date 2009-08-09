class Novidade < ActiveRecord::Base
  validates_presence_of :titulo, :texto
  validates_uniqueness_of :titulo 

  before_create :trg_inclusao

  #metodos auxiliares
  def descricao_status
    case self.status
      when 0: 'Cadastrada'
      when 1: 'Utilizada'
      when 2: 'Cancelada'
    end 
  end

  private
  def trg_inclusao
    self.status = 0 if self.status.nil?
  end
end
