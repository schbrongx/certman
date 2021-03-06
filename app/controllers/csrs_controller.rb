class CsrsController < ApplicationController
  before_action :set_csr, only: [:show, :edit, :update, :destroy, :export]
  before_action :set_csrtemplate, only: [:templatefiller]
  before_action :set_keypair, only: [:autogenerate]

  # GET /csrs
  def index
    @csrs = Csr.includes(:keypair, :csrtemplate)
    @certificates = Certificate.all
  end

  # GET /csrs/1
  def show
  end

  # GET /csrs/new
  def new
    @csr          = Csr.new
    @keypairs     = Keypair.all
    @csrtemplates = Csrtemplate.all
  end

  # POST /csrs/autogenerate
  def autogenerate
  end

  # POST /csrs/templatefiller
  def templatefiller
    @keypairs = Keypair.all
  end
  
  # GET /csrs/1/edit
  def edit
    @keypairs     = Keypair.all
    @csrtemplates = Csrtemplate.all
  end

  # POST /csrs
  def create
    @csr          = Csr.new(csr_params)
    @keypairs     = Keypair.all
    @csrtemplates = Csrtemplate.all
    if @csr.save
      redirect_to csrs_url, notice: 'CSR was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /csrs/1
  def update
    if @csr.update(csr_params)
      redirect_to csrs_url, notice: 'CSR was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /csrs/1
  def destroy
    if @csr.destroy
      redirect_to csrs_url, notice: 'CSR was successfully destroyed.'
    else
      redirect_to csrs_url, alert: 'Unable to delete CSR. ' + @csr.errors[:base].to_s
    end
  end

  # GET /csrs/1/export
  def export
    send_data @csr.content, filename: 'csr.txt', type:'text/plain', disposition:'attachment'
  end
  
  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csr
      @csr = Csr.find(params[:id])
    end
    
    # AJAX call for templatefiller posts csr template id, try to find corresponding template
    def set_csrtemplate
      @csrtemplate = Csrtemplate.find(params[:csrtemplate_id])
    end

    # AJAX call for autogenerate will post "keypair_id", try to find corresponding keypair
    def set_keypair
      params.require(:keypair_id)
      @keypair = Keypair.find(params[:keypair_id])
    end
    
    # Never trust parameters from the scary internet, only allow the white list through.
    def csr_params
      params.require(:csr).permit(:name, :content, :keypair_id, :csrtemplate_id, :cn, :o, :ou, :l, :s, :c, :email)
    end
end
