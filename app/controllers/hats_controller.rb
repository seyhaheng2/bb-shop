class HatsController < ApplicationController
  before_action :set_hat, only: [:show, :edit, :update, :destroy]

  # GET /hats
  # GET /hats.json
  def index
    @hats = Hat.all
  end

  # GET /hats/1
  # GET /hats/1.json
  def show
  end

  # GET /hats/new
  def new
    @hat = Hat.new
  end

  # GET /hats/1/edit
  def edit
  end

  # POST /hats
  # POST /hats.json
  def create
    @hat = Hat.new(hat_params)

    respond_to do |format|
      if @hat.save
        format.html { redirect_to @hat, notice: 'Hat was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hat }
      else
        format.html { render action: 'new' }
        format.json { render json: @hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hats/1
  # PATCH/PUT /hats/1.json
  def update
    respond_to do |format|
      if @hat.update(hat_params)
        format.html { redirect_to @hat, notice: 'Hat was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hats/1
  # DELETE /hats/1.json
  def destroy
    @hat.destroy
    respond_to do |format|
      format.html { redirect_to hats_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hat
      @hat = Hat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hat_params
      params.require(:hat).permit(:name, :image, :price, :description)
    end
end
