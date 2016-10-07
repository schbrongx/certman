class CsrtemplatesController < ApplicationController
  before_action :set_csrtemplate, only: [:show, :edit, :update, :destroy]

  # GET /csrtemplates
  # GET /csrtemplates.json
  def index
    @csrtemplates = Csrtemplate.all
  end

  # GET /csrtemplates/1
  # GET /csrtemplates/1.json
  def show
  end

  # GET /csrtemplates/new
  def new
    @csrtemplate = Csrtemplate.new
  end

  # GET /csrtemplates/1/edit
  def edit
  end

  # POST /csrtemplates
  # POST /csrtemplates.json
  def create
    @csrtemplate = Csrtemplate.new(csrtemplate_params)

    respond_to do |format|
      if @csrtemplate.save
        format.html { redirect_to csrtemplates_url, notice: 'Csrtemplate was successfully created.' }
        format.json { render :show, status: :created, location: @csrtemplate }
      else
        format.html { render :new }
        format.json { render json: @csrtemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /csrtemplates/1
  # PATCH/PUT /csrtemplates/1.json
  def update
    respond_to do |format|
      if @csrtemplate.update(csrtemplate_params)
        format.html { redirect_to csrtemplates_url, notice: 'Csrtemplate was successfully updated.' }
        format.json { render :show, status: :ok, location: @csrtemplate }
      else
        format.html { render :edit }
        format.json { render json: @csrtemplate.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /csrtemplates/1
  # DELETE /csrtemplates/1.json
  def destroy
    @csrtemplate.destroy
    respond_to do |format|
      format.html { redirect_to csrtemplates_url, notice: 'Csrtemplate was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_csrtemplate
      @csrtemplate = Csrtemplate.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def csrtemplate_params
      params.require(:csrtemplate).permit(:name, :description, :cn, :ou, :o, :l, :s, :c, :email)
    end
end
