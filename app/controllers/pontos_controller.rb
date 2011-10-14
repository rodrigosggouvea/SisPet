class PontosController < ApplicationController
  before_filter :carregar_funcionarios,    :only => [:new,:create,:edit,:update,:show]
  before_filter :carregar_horas_e_minutos, :only => [:new,:create,:edit,:update,:show]
  before_filter :carregar_ponto,           :only => [:new,:create,:edit,:update,:show]
  
  def index
    @pontos = Ponto.all
  end

  def show
  end

  def new
  end

  def edit
  end

  def create
    @ponto = Ponto.new(params[:ponto])

    if @ponto.save
      redirect_to(@ponto, :notice => 'Ponto was successfully created.')
    else
      render :action => "new"
    end
  end

  def update
    if @ponto.update_attributes(params[:ponto])
      redirect_to(@ponto, :notice => 'Ponto was successfully updated.')
    else
      render :action => "edit"
    end
  end

  def carregar_funcionarios
    @funcionarios = Funcionario.all.collect{ |f| [f.nome, f.id] }
  end

  def carregar_horas_e_minutos
    @horas = []
    @minutos = []
    @horas = (0..23).each {|h| @horas << [h,h]}
    @minutos = (0..59).each {|m| @minutos << [m,m]}
  end

  def carregar_ponto
    if params[:id]
      @ponto = Ponto.find(params[:id])
    else
      @ponto = Ponto.new
      @ponto.horarios.build
    end
  end
end
