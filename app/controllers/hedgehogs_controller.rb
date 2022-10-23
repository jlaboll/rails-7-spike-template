class HedgehogsController < ApplicationController
  before_action :set_hedgehog, only: %i[ show update destroy ]

  # GET /hedgehogs
  def index
    @hedgehogs = Hedgehog.all

    render json: @hedgehogs
  end

  # GET /hedgehogs/1
  def show
    render json: @hedgehog
  end

  # POST /hedgehogs
  def create
    @hedgehog = Hedgehog.new(hedgehog_params)

    if @hedgehog.save
      render json: @hedgehog, status: :created, location: @hedgehog
    else
      render json: @hedgehog.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /hedgehogs/1
  def update
    if @hedgehog.update(hedgehog_params)
      render json: @hedgehog
    else
      render json: @hedgehog.errors, status: :unprocessable_entity
    end
  end

  # DELETE /hedgehogs/1
  def destroy
    @hedgehog.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hedgehog
      @hedgehog = Hedgehog.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def hedgehog_params
      params.require(:hedgehog).permit(:name, :birthday, :color, :breed)
    end
end
