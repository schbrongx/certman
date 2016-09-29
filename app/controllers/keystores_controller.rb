class KeystoresController < ApplicationController
  before_action :set_keystore, only: [:show, :edit, :update, :destroy]

  # GET /keystores
  # GET /keystores.json
  def index
    @keystores = Keystore.all
  end

  # GET /keystores/1
  # GET /keystores/1.json
  def show
  end

  # GET /keystores/new
  def new
    @keystore = Keystore.new
    @keypairs= Keypair.all
    @csrs = Csr.all
    @certificates = Certificate.all
  end

  # GET /keystores/1/edit
  def edit
    @keypairs = Keypair.all
    @csrs = Csr.all
    @certificates = Certificate.all
  end

  # POST /keystores
  # POST /keystores.json
  def create
    @keystore = Keystore.new(keystore_params)
    @keypairs = Keypair.all
    @csrs = Csr.all
    @certificates = Certificate.all

    respond_to do |format|
      if @keystore.save
        format.html { redirect_to @keystore, notice: 'Keystore was successfully created.' }
        format.json { render :show, status: :created, location: @keystore }
      else
        format.html { render :new }
        format.json { render json: @keystore.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keystores/1
  # PATCH/PUT /keystores/1.json
  def update
    respond_to do |format|
      if @keystore.update(keystore_params)
        format.html { redirect_to @keystore, notice: 'Keystore was successfully updated.' }
        format.json { render :show, status: :ok, location: @keystore }
      else
        format.html { render :edit }
        format.json { render json: @keystore.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keystores/1
  # DELETE /keystores/1.json
  def destroy
    @keystore.destroy
    respond_to do |format|
      format.html { redirect_to keystores_url, notice: 'Keystore was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keystore
      @keystore = Keystore.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keystore_params
      params.require(:keystore).permit(:name, :description, :keypair_id, :csr_id, :certificate_id)
    end
end
