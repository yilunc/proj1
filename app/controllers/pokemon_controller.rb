class PokemonController < ApplicationController
  def capture
    p = Pokemon.find(params[:id])
    p.trainer = current_trainer
    p.save
    redirect_to "/"
  end

  def damage
    p = Pokemon.find(params[:id])
    p.health -= 10
    if p.health <= 0
      p.destroy
    else
      p.save
    end
    redirect_to :back
  end

  def new
    @pokemon = Pokemon.new
  end

  def create
    @pokemon = Pokemon.new(name: params[:pokemon][:name], level: 1, health: 100, trainer: current_trainer)
    if @pokemon.valid?
      @pokemon.save
      redirect_to "/trainers/#{current_trainer.id}"
    else
      flash[:error] = @pokemon.errors.full_messages.to_sentence
      redirect_to pokemons_path
    end
  end
end
