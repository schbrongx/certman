class CertificatesController < ApplicationController
  before_action :set_certificate, only: [:show, :edit, :update, :destroy, :export]
  before_action :set_csr, only: [:sign]

  # GET /certificates
  def index
    @certificates = Certificate.all
  end

  # GET /certificates/1
  def show
  end

  # GET /certificates/new
  def new
    @certificate = Certificate.new
    @certificatetypes = Certificatetype.all
    @csrs = Csr.all
    @keystores = Keystore.find(Certificate.find(Certificatetype.find([ 1, 2])))
  end

  # GET /certificates/1/edit
  def edit
    @certificatetypes = Certificatetype.all
    @csrs = Csr.all
    @keystores = Keystore.find(Certificate.find(Certificatetype.find([ 1, 2])))
    logger.info ('===============================================================')
    logger.info (Certificatetype.where("id = ?", [1, 2]))
    logger.info ('===============================================================')
  end

  # POST /certificates
  def create
    @certificate = Certificate.new(certificate_params)
    if @certificate.save
      redirect_to certificates_url, notice: 'Certificate was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /certificates/1
  def update
    if @certificate.update(certificate_params)
      redirect_to certificates_url, notice: 'Certificate was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /certificates/1
  def destroy
    if @certificate.destroy
      redirect_to certificates_url, notice: 'Certificate was successfully destroyed.'
    else
      redirect_to certificates_url, alert: 'Unable to delete certificate. ' + @certificate.errors[:base].to_s
    end  # if .destroy
  end  # def destroy

  # GET /certificates/1/export
  def export
    send_data @certificate.content, filename: 'certificate.txt', type:'text/plain', disposition:'attachment'
  end

  # POST /certificates/sign
  def sign
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificate
      @certificate = Certificate.find(params[:id])
    end

    # AJAX call for autogenerate will post "csr_id" and "keystore_id".
    # Trying to find corresponding items in db
    def set_csr
      params.require(:csr_id)
      @csr = Csr.find(params[:csr_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificate_params
      params.require(:certificate).permit(:name, :certificatetype_id, :csr_id, :content)
    end
end
