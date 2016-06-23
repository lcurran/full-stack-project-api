#
class CharacterStatsController < ApplicationController
  before_action :set_character_stat, only: [:show, :update, :destroy]

  # GET /character_stats
  # GET /character_stats.json
  def index
    @character_stats = CharacterStat.all

    render json: @character_stats
  end

  # GET /character_stats/1
  # GET /character_stats/1.json
  def show
    render json: @character_stat
  end

  # POST /character_stats
  # POST /character_stats.json
  def create
    @character_stat = CharacterStat.new(character_stat_params)

    if @character_stat.save
      render json: @character_stat, status: :created, location: @character_stat
    else
      render json: @character_stat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_stats/1
  # PATCH/PUT /character_stats/1.json
  def update
    @character_stat = CharacterStat.find(params[:id])

    if @character_stat.update(character_stat_params)
      head :no_content
    else
      render json: @character_stat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_stats/1
  # DELETE /character_stats/1.json
  def destroy
    @character_stat.destroy

    head :no_content
  end

  private

  def set_character_stat
    @character_stat = CharacterStat.find(params[:id])
  end

  def character_stat_params
    params.require(:character_skill).permit(:character_id, :stat_id, :stat_value, :saving_throw)
  end
end
