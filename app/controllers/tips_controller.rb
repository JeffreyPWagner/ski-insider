class TipsController < ApplicationController
  before_action :set_tip, only: [:show, :edit, :update, :destroy]
  respond_to :html, :js

  # GET /tips
  # GET /tips.json
  def index
    @tips = Tip.all
  end

  # GET /tips/1
  # GET /tips/1.json
  def show
  end

  # GET /tips/new
  def new
    @tip = Tip.new
  end

  # GET /tips/1/edit
  def edit
  end

  # POST /tips
  # POST /tips.json
  def create
    @resort = Resort.find(params[:resort_id])
    @tip = @resort.tips.create(tip_params)
    redirect_to resort_path(@resort)
  end

  # PATCH/PUT /tips/1
  # PATCH/PUT /tips/1.json
  def update
    respond_to do |format|
      if @tip.update(tip_params)
        format.html { redirect_to @tip, notice: 'Tip was successfully updated.' }
        format.json { render :show, status: :ok, location: @tip }
      else
        format.html { render :edit }
        format.json { render json: @tip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /tips/1
  # DELETE /tips/1.json
  def destroy
    @resort = Resort.find(@tip.resort_id)
    @tip.destroy
    redirect_to resort_path(@resort)
  end

  def vote
    @tip = Tip.find(params[:tip_id])
    if current_user.liked? @tip
      @tip.unliked_by current_user
    else
      @tip.liked_by current_user
    end
    render 'vote.js.erb'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_tip
      @tip = Tip.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def tip_params
      params.require(:tip).permit(:title, :body, :resort_id, :user_id, :score, :category)
    end
end
