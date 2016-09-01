class KeytypesController < ApplicationController
  before_action :set_keytype, only: [:show, :edit, :update, :destroy]

  # GET /keytypes
  # GET /keytypes.json
  def index
    @keytypes = Keytype.all
  end

  # GET /keytypes/1
  # GET /keytypes/1.json
  def show
  end

  # GET /keytypes/new
  def new
    @keytype = Keytype.new
  end

  # GET /keytypes/1/edit
  def edit
  end

  # POST /keytypes
  # POST /keytypes.json
  def create
    @keytype = Keytype.new(keytype_params)

    respond_to do |format|
      if @keytype.save
        format.html { redirect_to @keytype, notice: 'Keytype was successfully created.' }
        format.json { render :show, status: :created, location: @keytype }
      else
        format.html { render :new }
        format.json { render json: @keytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /keytypes/1
  # PATCH/PUT /keytypes/1.json
  def update
    respond_to do |format|
      if @keytype.update(keytype_params)
        format.html { redirect_to @keytype, notice: 'Keytype was successfully updated.' }
        format.json { render :show, status: :ok, location: @keytype }
      else
        format.html { render :edit }
        format.json { render json: @keytype.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /keytypes/1
  # DELETE /keytypes/1.json
  def destroy
    @keytype.destroy
    respond_to do |format|
      format.html { redirect_to keytypes_url, notice: 'Keytype was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_keytype
      @keytype = Keytype.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def keytype_params
      params.require(:keytype).permit(:name)
    end
end
