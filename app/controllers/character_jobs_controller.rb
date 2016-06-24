class CharacterJobsController < ApplicationController
  before_action :set_character_job, only: [:show, :update, :destroy]

  # GET /character_jobs
  # GET /character_jobs.json
  def index
    @character_jobs = CharacterJob.all

    render json: @character_jobs
  end

  # GET /character_jobs/1
  # GET /character_jobs/1.json
  def show
    render json: @character_job
  end

  # POST /character_jobs
  # POST /character_jobs.json
  def create
    @character_job = CharacterJob.new(character_job_params)

    if @character_job.save
      render json: @character_job, status: :created, location: @character_job
    else
      render json: @character_job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /character_jobs/1
  # PATCH/PUT /character_jobs/1.json
  def update
    @character_job = CharacterJob.find(params[:id])

    if @character_job.update(character_job_params)
      head :no_content
    else
      render json: @character_job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /character_jobs/1
  # DELETE /character_jobs/1.json
  def destroy
    @character_job.destroy

    head :no_content
  end

  private

    def set_character_job
      @character_job = CharacterJob.find(params[:id])
    end

    def character_job_params
      params.require(:character_job).permit(:character_id, :job_id, :level, :experience)
    end
end
