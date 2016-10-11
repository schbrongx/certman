class CertificatesController < ApplicationController
  before_action :set_certificate, only: [:show, :edit, :update, :destroy, :export]

  # GET /certificates
  # GET /certificates.json
  def index
    @certificates = Certificate.all
  end

  # GET /certificates/1
  # GET /certificates/1.json
  def show
  end

  # GET /certificates/new
  def new
    @certificate = Certificate.new
    @certificatetype = Certificatetype.all
  end

  # GET /certificates/1/edit
  def edit
    @certificatetype = Certificatetype.all
  end

  # POST /certificates
  # POST /certificates.json
  def create
    @certificate = Certificate.new(certificate_params)

    respond_to do |format|
      if @certificate.save
        format.html { redirect_to certificates_url, notice: 'Certificate was successfully created.' }
        format.json { render :show, status: :created, location: @certificate }
      else
        format.html { render :new }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certificates/1
  # PATCH/PUT /certificates/1.json
  def update
    respond_to do |format|
      if @certificate.update(certificate_params)
        format.html { redirect_to certificates_url, notice: 'Certificate was successfully updated.' }
        format.json { render :show, status: :ok, location: @certificate }
      else
        format.html { render :edit }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificates/1
  # DELETE /certificates/1.json
  def destroy
    if @certificate.destroy
      respond_to do |format|
        format.html { redirect_to certificates_url, notice: 'Certificate was successfully destroyed.' }
        format.json { head :no_content }
      end  # respond_to
    else
      respond_to do |format|
        format.html { redirect_to certificates_url, alert: 'Unable to delete certificate. ' + @certificate.errors[:base].to_s }
        format.json { render json: @certificate.errors, status: :unprocessable_entity }
      end  # respond_to
    end  # if .destroy
  end  # def destroy

  # GET /certificates/1/export
  def export
    send_data @certificate.content, filename: 'certificate.txt', type:'text/plain', disposition:'attachment'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificate
      @certificate = Certificate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificate_params
      params.require(:certificate).permit(:name, :certificatetype_id, :content)
    end
end
