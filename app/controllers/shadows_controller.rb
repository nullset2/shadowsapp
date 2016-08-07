class ShadowsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shadow, only: [:show, :edit, :update, :destroy]

  def index
    @shadows = Shadow.all
  end

  def show
  end

  def new
    @shadow = Shadow.new
  end

  def edit
  end

  def create
    @shadow = Shadow.new(shadow_params)

    respond_to do |format|
      if @shadow.save
        format.html { redirect_to @shadow, notice: 'Shadow was successfully created.' }
        format.json { render :show, status: :created, location: @shadow }
      else
        format.html { render :new }
        format.json { render json: @shadow.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @shadow.update(shadow_params)
        format.html { redirect_to @shadow, notice: 'Shadow was successfully updated.' }
        format.json { render :show, status: :ok, location: @shadow }
      else
        format.html { render :edit }
        format.json { render json: @shadow.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @shadow.destroy
    respond_to do |format|
      format.html { redirect_to shadows_url, notice: 'Shadow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_shadow
      @shadow = Shadow.find(params[:id])
    end

    def shadow_params
      params.fetch(:shadow, {})
    end
end
