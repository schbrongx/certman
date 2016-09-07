class CsrsController < ApplicationController
  before_action :set_csr, only: [:show, :edit, :update, :destroy]

  # GET /csrs
  # GET /csrs.json
  def index
    @csrs = Csr.all
  end

  # GET /csrs/1
  # GET /csrs/1.json
  def show
  end

  # GET /csrs/new
  def new
    @csr = Csr.new
    @key = Key.all
  end

  # GET /csrs/1/edit
  def edit
    @key = Key.all
  end

  # POST /csrs
  # POST /csrs.json
  def create
    @csr = Csr.new(csr_params)

    respond_to do |format|
      if @csr.save
        format.html { redirect_to @csr, notice: 'Csr was successfully created.' }
        format.json { render :show, status: :created, location: @csr }
      else
        format.html { render :new }
        format.json { render json: @csr.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csrs/1
  # PATCH/PUT /csrs/1.json
  def update
    respond_to do |format|
      if @csr.update(csr_params)
        format.html { redirect_to @csr, notice: 'Csr was successfully updated.' }
        format.json { render :show, status: :ok, location: @csr }
      else
        format.html { render :edit }
        format.json { render json: @csr.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csrs/1
  # DELETE /csrs/1.json
  def destroy
    @csr.destroy
    respond_to do |format|
      format.html { redirect_to csrs_url, notice: 'Csr was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csr
      @csr = Csr.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csr_params
      params.require(:csr).permit(:name, :content)
    end
end
