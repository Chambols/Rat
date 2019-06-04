class GestaltsController < ApplicationController
  before_action :set_gestalt, only: [:show, :edit, :update, :destroy]

  # GET /gestalts
  # GET /gestalts.json
  def index
    @gestalts = Gestalt.all
  end

  # GET /gestalts/1
  # GET /gestalts/1.json
  def show
  end

  # GET /gestalts/new
  def new
    @gestalt = Gestalt.new
  end

  # GET /gestalts/1/edit
  def edit
  end

  # POST /gestalts
  # POST /gestalts.json
  def create
    @gestalt = Gestalt.new(gestalt_params)

    respond_to do |format|
      if @gestalt.save
        format.html { redirect_to @gestalt, notice: 'Gestalt was successfully created.' }
        format.json { render :show, status: :created, location: @gestalt }
      else
        format.html { render :new }
        format.json { render json: @gestalt.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /gestalts/1
  # PATCH/PUT /gestalts/1.json
  def update
    respond_to do |format|
      if @gestalt.update(gestalt_params)
        format.html { redirect_to @gestalt, notice: 'Gestalt was successfully updated.' }
        format.json { render :show, status: :ok, location: @gestalt }
      else
        format.html { render :edit }
        format.json { render json: @gestalt.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /gestalts/1
  # DELETE /gestalts/1.json
  def destroy
    @gestalt.destroy
    respond_to do |format|
      format.html { redirect_to gestalts_url, notice: 'Gestalt was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_gestalt
      @gestalt = Gestalt.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def gestalt_params
      params.require(:gestalt).permit(:name_of_perpetrator, :time_of_offence, :type_of_offence, :suggested_punishment)
    end
end
