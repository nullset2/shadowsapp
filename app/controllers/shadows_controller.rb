class ShadowsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_shadow, only: [:show, :edit, :update, :destroy]

  # GET /shadows
  # GET /shadows.json
  def index
    @shadows = Shadow.all
  end

  # GET /shadows/1
  # GET /shadows/1.json
  def show
  end

  # GET /shadows/new
  def new
    @shadow = Shadow.new
  end

  # GET /shadows/1/edit
  def edit
  end

  # POST /shadows
  # POST /shadows.json
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

  # PATCH/PUT /shadows/1
  # PATCH/PUT /shadows/1.json
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

  # DELETE /shadows/1
  # DELETE /shadows/1.json
  def destroy
    @shadow.destroy
    respond_to do |format|
      format.html { redirect_to shadows_url, notice: 'Shadow was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shadow
      @shadow = Shadow.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shadow_params
      params.fetch(:shadow, {})
    end
end
