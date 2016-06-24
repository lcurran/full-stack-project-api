class CharacterSpellsController < ApplicationController
  before_action :set_character_spell, only: [:show, :update, :destroy]

  # GET /character_spells
  # GET /character_spells.json
  def index
    @character_spells = CharacterSpell.all

    render json: @character_spells
  end

  # GET /character_spells/1
  # GET /character_spells/1.json
  def show
    render json: @character_spell
  end

  # POST /character_spells
  # POST /character_spells.json
  def create
    @character_spell = CharacterSpell.new(character_spell_params)

    if @character_spell.save
      render json: @character_spell, status: :created, location: @character_spell
    else
      render json: @character_spell.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_spells/1
  # PATCH/PUT /character_spells/1.json
  def update
    @character_spell = CharacterSpell.find(params[:id])

    if @character_spell.update(character_spell_params)
      head :no_content
    else
      render json: @character_spell.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_spells/1
  # DELETE /character_spells/1.json
  def destroy
    @character_spell.destroy

    head :no_content
  end

  private

    def set_character_spell
      @character_spell = CharacterSpell.find(params[:id])
    end

    def character_spell_params
      params.require(:character_spell).permit(:character_id, :spell_id, :damage_modifier)
    end
end
