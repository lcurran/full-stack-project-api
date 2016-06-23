class SpellsController < ApplicationController
  before_action :set_spell, only: [:show, :update, :destroy]

  # GET /spells
  # GET /spells.json
  def index
    @spells = Spell.all

    render json: @spells
  end

  # GET /spells/1
  # GET /spells/1.json
  def show
    render json: @spell
  end

  # POST /spells
  # POST /spells.json
  def create
    @spell = Spell.new(spell_params)

    if @spell.save
      render json: @spell, status: :created, location: @spell
    else
      render json: @spell.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /spells/1
  # PATCH/PUT /spells/1.json
  def update
    @spell = Spell.find(params[:id])

    if @spell.update(spell_params)
      head :no_content
    else
      render json: @spell.errors, status: :unprocessable_entity
    end
  end

  # DELETE /spells/1
  # DELETE /spells/1.json
  def destroy
    @spell.destroy

    head :no_content
  end

  private

    def set_spell
      @spell = Spell.find(params[:id])
    end

    def spell_params
      params.require(:spell).permit(:name, :school, :subschool, :descriptor, :spell_level)
    end
end
