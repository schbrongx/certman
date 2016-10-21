class KeystoresController < ApplicationController
  before_action :set_keystore, only: [:show, :edit, :update, :destroy, :export]

  # GET /keystores
  def index
    @keystores = Keystore.all
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
  
  # GET /keystore/1/export
  def export
  end

  # POST /keystores
  def create
    @keystore = Keystore.new(keystore_params)
    @keypairs = Keypair.all
    @csrs = Csr.all
    @certificates = Certificate.all
    if @keystore.save
      redirect_to keystores_url, notice: 'Keystore was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /keystores/1
  def update
    if @keystore.update(keystore_params)
      redirect_to keystores_url, notice: 'Keystore was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /keystores/1
  def destroy
    @keystore.destroy
      redirect_to keystores_url, notice: 'Keystore was successfully destroyed.'
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
