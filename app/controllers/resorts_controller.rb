class ResortsController < ApplicationController
  before_action :set_resort, only: [:show, :edit, :update, :destroy]
  respond_to :html, :json, :js

  # GET /resorts
  # GET /resorts.json
  def index
    @resorts = Resort.all
  end

  # GET /resorts/1
  # GET /resorts/1.json
  def show
    @user = current_user
  end

  # GET /resorts/new
  def new
    redirect_to root_path, warning: "You are not authorized" unless current_user.admin?
    @resort = Resort.new
    @user = current_user
  end

  # GET /resorts/1/edit
  def edit
    redirect_to root_path, warning: "You are not authorized" unless current_user.admin?
  end

  # POST /resorts
  # POST /resorts.json
  def create
    redirect_to root_path, warning: "You are not authorized" unless current_user.admin?
    @resort = Resort.new(resort_params)
    @user = current_user

    respond_to do |format|
      if @resort.save
        format.html { redirect_to @resort, notice: 'Resort was successfully created.' }
        format.json { render :show, status: :created, location: @resort }
      else
        format.html { render :new }
        format.json { render json: @resort.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /resorts/1
  # PATCH/PUT /resorts/1.json
  def update
    redirect_to root_path, warning: "You are not authorized" unless current_user.admin?
    respond_to do |format|
      if @resort.update(resort_params)
        format.html { redirect_to @resort, notice: 'Resort was successfully updated.' }
        format.json { render :show, status: :ok, location: @resort }
      else
        format.html { render :edit }
        format.json { render json: @resort.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /resorts/1
  # DELETE /resorts/1.json
  def destroy
    redirect_to root_path, warning: "You are not authorized" unless current_user.admin?
    @resort.destroy
    respond_to do |format|
      format.html { redirect_to resorts_url, notice: 'Resort was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_resort
      @resort = Resort.find(params[:id])
      @user = current_user
    end

    # Only allow a list of trusted parameters through.
    def resort_params
      params.require(:resort).permit(:name, :state, :image, :epic, :ikon, :trail)
    end
end
