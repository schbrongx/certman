class KeypairsController < ApplicationController
  before_action :set_keypair, only: [:show, :edit, :update, :destroy]

  # GET /keypairs
  # GET /keypairs.json
  def index
    @keypairs = Keypair.all
  end

  # GET /keypairs/1
  # GET /keypairs/1.json
  def show
  end

  # GET /keypairs/new
  def new
    @keypair = Keypair.new
  end

  # GET /keypairs/1/edit
  def edit
  end

  # POST /keypairs
  # POST /keypairs.json
  def create
    @keypair = Keypair.new(keypair_params)

    respond_to do |format|
      if @keypair.save
        format.html { redirect_to @keypair, notice: 'Keypair was successfully created.' }
        format.json { render :show, status: :created, location: @keypair }
      else
        format.html { render :new }
        format.json { render json: @keypair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keypairs/1
  # PATCH/PUT /keypairs/1.json
  def update
    respond_to do |format|
      if @keypair.update(keypair_params)
        format.html { redirect_to @keypair, notice: 'Keypair was successfully updated.' }
        format.json { render :show, status: :ok, location: @keypair }
      else
        format.html { render :edit }
        format.json { render json: @keypair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keypairs/1
  # DELETE /keypairs/1.json
  def destroy
    @keypair.destroy
    respond_to do |format|
      format.html { redirect_to keypairs_url, notice: 'Keypair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keypair
      @keypair = Keypair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keypair_params
      params.require(:keypair).permit(:name, :privatekey, :publickey)
    end
end
