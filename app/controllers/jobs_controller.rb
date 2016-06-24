class JobsController < ApplicationController
  before_action :set_job, only: [:show, :update, :destroy]

  # GET /jobs
  # GET /jobs.json
  def index
    @jobs = Job.all

    render json: @jobs
  end

  # GET /jobs/1
  # GET /jobs/1.json
  def show
    render json: @job
  end

  # POST /jobs
  # POST /jobs.json
  def create
    @job = Job.new(job_params)

    if @job.save
      render json: @job, status: :created, location: @job
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /jobs/1
  # PATCH/PUT /jobs/1.json
  def update
    @job = Job.find(params[:id])

    if @job.update(job_params)
      head :no_content
    else
      render json: @job.errors, status: :unprocessable_entity
    end
  end

  # DELETE /jobs/1
  # DELETE /jobs/1.json
  def destroy
    @job.destroy

    head :no_content
  end

  private

    def set_job
      @job = Job.find(params[:id])
    end

    def job_params
      params.require(:job).permit(:name)
    end
end
