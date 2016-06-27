#
class CharacterSkillsController < ApplicationController
  before_action :set_character_skill, only: [:show, :update, :destroy]

  # GET /character_skills
  # GET /character_skills.json
  def index
    @character_skills = CharacterSkill.all

    render json: @character_skills
  end

  # GET /character_skills/1
  # GET /character_skills/1.json
  def show
    render json: @character_skill
  end

  # POST /character_skills
  # POST /character_skills.json
  def create
    @character_skill = CharacterSkill.new(character_skill_params)

    if @character_skill.save
      render json: @character_skill,
             status: :created,
             location: @character_skill
    else
      render json: @character_skill.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_skills/1
  # PATCH/PUT /character_skills/1.json
  def update
    @character_skill = CharacterSkill.find(params[:id])

    if @character_skill.update(character_skill_params)
      head :no_content
    else
      render json: @character_skill.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_skills/1
  # DELETE /character_skills/1.json
  def destroy
    @character_skill.destroy

    head :no_content
  end

  private

  def set_character_skill
    @character_skill = CharacterSkill.find(params[:id])
  end

  def character_skill_params
    params.require(:character).permit(:character_id, :skill_id, :value)
  end
end
