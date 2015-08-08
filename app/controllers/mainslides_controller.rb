class MainslidesController < ApplicationController

  layout 'admin'

  before_action :set_mainslide, only: [:show, :edit, :update, :destroy]

  # GET /mainslides
  # GET /mainslides.json
  def index
    @mainslides = Mainslide.all
  end

  # GET /mainslides/1
  # GET /mainslides/1.json
  def show
  end

  # GET /mainslides/new
  def new
    @mainslide = Mainslide.new
  end

  # GET /mainslides/1/edit
  def edit
  end

  # POST /mainslides
  # POST /mainslides.json
  def create
    @mainslide = Mainslide.new(mainslide_params)

    respond_to do |format|
      if @mainslide.save
        format.html { redirect_to @mainslide, notice: 'Mainslide was successfully created.' }
        format.json { render :show, status: :created, location: @mainslide }
      else
        format.html { render :new }
        format.json { render json: @mainslide.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /mainslides/1
  # PATCH/PUT /mainslides/1.json
  def update
    respond_to do |format|
      if @mainslide.update(mainslide_params)
        format.html { redirect_to @mainslide, notice: 'Mainslide was successfully updated.' }
        format.json { render :show, status: :ok, location: @mainslide }
      else
        format.html { render :edit }
        format.json { render json: @mainslide.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /mainslides/1
  # DELETE /mainslides/1.json
  def destroy
    @mainslide.destroy
    respond_to do |format|
      format.html { redirect_to mainslides_url, notice: 'Mainslide was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_mainslide
      @mainslide = Mainslide.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def mainslide_params
      params.require(:mainslide).permit(:title, :descrip, :cloud_url, :slidenumber, :active)
    end
end
