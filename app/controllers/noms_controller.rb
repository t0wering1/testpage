class NomsController < ApplicationController
  def show
  	@nom = Nom.find(params[:id])
  end

  def new
  	@nom = Nom.new
  end

  def create
  	@nom = Nom.new(params[:nom])
  	if @nom.save
  		redirect_to @nom
  	else
  		render 'new'
  	end
  end
end
