class ShadowsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shadow, only: [:show, :edit, :update, :destroy]

  def index
    @shadows = Shadow.all
  end

  def create
    @shadow = Shadow.new(shadow_params)

    if @shadow.save
      render :show, status: :created, location: @shadow
    else
      render json: @shadow.errors, status: :unprocessable_entity
    end
  end

  def update
    if @shadow.update(shadow_params)
      render :show, status: :ok, location: @shadow
    else
      render json: @shadow.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @shadow.destroy
    head :no_content
  end

  private
    def set_shadow
      @shadow = Shadow.find(params[:id])
    end

    def shadow_params
      params.fetch(:shadow, {})
    end
end
