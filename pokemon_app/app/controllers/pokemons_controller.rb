class PokemonsController < ApplicationController

  def index
    @pokemons = Pokemon.all
  end

  def new
    @pokemon = Pokemon.new

  end

  def create
    @pokemon = Pokemon.new
    @pokemon.species = params[:species]
    @pokemon.nickname = params[:nickname]
    @pokemon.level = params[:level]
    @pokemon.image = params[:image]
    @pokemon.save
    redirect_to '/'
  end


  def destroy
    pokemon = Pokemon.find(params[:id])
    pokemon.destroy
    redirect_to '/'
  end

  def edit
    @pokemon = Pokemon.find(params[:id])
  end

  def update
    pokemon.Pokemon.find(params[:id])
    pokemon.species = params[:description]
    pokemon.nickname = params[:nickname]
    pokemon.level = params[:level]
    pokemon.image = params[:image]
    pokemon.save
    redirect_to "/pokemons/#{pokemon.id}"
  end


end
