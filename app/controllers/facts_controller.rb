class FactsController < ApplicationController

  def index
    facts = Fact.all
    render json: facts
  end

  def show
    fact = Fact.find(params[:id])
    render json: fact
  end

end
