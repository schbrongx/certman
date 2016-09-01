class CertificatetypesController < ApplicationController
  before_action :set_certificatetype, only: [:show, :edit, :update, :destroy]

  # GET /certificatetypes
  # GET /certificatetypes.json
  def index
    @certificatetypes = Certificatetype.all
  end

  # GET /certificatetypes/1
  # GET /certificatetypes/1.json
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
  # POST /certificatetypes.json
  def create
    @certificatetype = Certificatetype.new(certificatetype_params)

    respond_to do |format|
      if @certificatetype.save
        format.html { redirect_to @certificatetype, notice: 'Certificatetype was successfully created.' }
        format.json { render :show, status: :created, location: @certificatetype }
      else
        format.html { render :new }
        format.json { render json: @certificatetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /certificatetypes/1
  # PATCH/PUT /certificatetypes/1.json
  def update
    respond_to do |format|
      if @certificatetype.update(certificatetype_params)
        format.html { redirect_to @certificatetype, notice: 'Certificatetype was successfully updated.' }
        format.json { render :show, status: :ok, location: @certificatetype }
      else
        format.html { render :edit }
        format.json { render json: @certificatetype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /certificatetypes/1
  # DELETE /certificatetypes/1.json
  def destroy
    @certificatetype.destroy
    respond_to do |format|
      format.html { redirect_to certificatetypes_url, notice: 'Certificatetype was successfully destroyed.' }
      format.json { head :no_content }
    end
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
