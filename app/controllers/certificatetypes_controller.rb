class CertificatetypesController < ApplicationController
  before_action :set_certificatetype, only: [:show, :edit, :update, :destroy]

  # GET /certificatetypes
  def index
    @certificatetypes = Certificatetype.all
  end

  # GET /certificatetypes/1
  def show
  end

  # GET /certificatetypes/new
  def new
    @certificatetype = Certificatetype.new
  end

  # GET /certificatetypes/1/edit
  def edit
  end

  # POST /certificatetypes
  def create
    @certificatetype = Certificatetype.new(certificatetype_params)
    if @certificatetype.save
      redirect_to certificatetypes_url, notice: 'Certificatetype was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /certificatetypes/1
  def update
    if @certificatetype.update(certificatetype_params)
      redirect_to certificatetypes_url, notice: 'Certificatetype was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /certificatetypes/1
  def destroy
    @certificatetype.destroy
    redirect_to certificatetypes_url, notice: 'Certificatetype was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_certificatetype
      @certificatetype = Certificatetype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def certificatetype_params
      params.require(:certificatetype).permit(:name)
    end
end
