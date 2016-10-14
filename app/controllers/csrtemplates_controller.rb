class CsrtemplatesController < ApplicationController
  before_action :set_csrtemplate, only: [:show, :edit, :update, :destroy]

  # GET /csrtemplates
  def index
    @csrtemplates = Csrtemplate.all
  end

  # GET /csrtemplates/1
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
  def create
    @csrtemplate = Csrtemplate.new(csrtemplate_params)
    if @csrtemplate.save
      redirect_to csrtemplates_url, notice: 'Csrtemplate was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /csrtemplates/1
  def update
    if @csrtemplate.update(csrtemplate_params)
      redirect_to csrtemplates_url, notice: 'Csrtemplate was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /csrtemplates/1
  def destroy
    if @csrtemplate.destroy
        redirect_to csrtemplates_url, notice: 'Csrtemplate was successfully destroyed.'
    else
        redirect_to csrtemplates_url, alert: 'Unable to delete CSR-template . ' + @csrtemplate.errors[:base].to_s
    end  # if .destroy
  end  # def destroy

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
