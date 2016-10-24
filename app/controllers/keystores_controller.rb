class KeystoresController < ApplicationController
  before_action :set_keystore, only: [:show, :edit, :update, :destroy, :export]

  # GET /keystores
  def index
    @keystores = Keystore.includes(:keypair, :csr, :certificate)
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
  # controller action to download zip
  def export
    require 'zip'
    compressed_filestream = Zip::OutputStream.write_buffer(::StringIO.new(''), Zip::TraditionalEncrypter.new('password')) do |zos|
      if !@keystore.keypair.nil?
        # private key
        zos.put_next_entry 'privatekey.pem'
        zos.print @keystore.keypair.privatekey
        
        # public key
        zos.put_next_entry 'publickey.pem'
        zos.print @keystore.keypair.publickey
      end  # if
      
      if !@keystore.csr.nil?
        # csr
        zos.put_next_entry 'csr.txt'
        zos.print @keystore.csr.content
      end  # if
      
      if !@keystore.certificate.nil?
        # certificate
        zos.put_next_entry 'certificate.crt'
        zos.print @keystore.certificate.content
      end  #if
    end  # do |zos|
  
    compressed_filestream.rewind
    send_data compressed_filestream.read, filename: "keystore.zip"
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
