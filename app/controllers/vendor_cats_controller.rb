class VendorCatsController < ApplicationController

  layout 'admin'

  before_action :authenticate_admin!
  before_action :set_vendor_cat, only: [:show, :edit, :update, :destroy]

  # GET /vendor_cats
  # GET /vendor_cats.json
  def index
    @vendor_cats = VendorCat.all
  end

  # GET /vendor_cats/1
  # GET /vendor_cats/1.json
  def show
  end

  # GET /vendor_cats/new
  def new
    @vendor_cat = VendorCat.new
  end

  # GET /vendor_cats/1/edit
  def edit
  end

  # POST /vendor_cats
  # POST /vendor_cats.json
  def create
    @vendor_cat = VendorCat.new(vendor_cat_params)

    respond_to do |format|
      if @vendor_cat.save
        format.html { redirect_to @vendor_cat, notice: 'Vendor cat was successfully created.' }
        format.json { render :show, status: :created, location: @vendor_cat }
      else
        format.html { render :new }
        format.json { render json: @vendor_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendor_cats/1
  # PATCH/PUT /vendor_cats/1.json
  def update
    respond_to do |format|
      if @vendor_cat.update(vendor_cat_params)
        format.html { redirect_to @vendor_cat, notice: 'Vendor cat was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor_cat }
      else
        format.html { render :edit }
        format.json { render json: @vendor_cat.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendor_cats/1
  # DELETE /vendor_cats/1.json
  def destroy
    @vendor_cat.destroy
    respond_to do |format|
      format.html { redirect_to vendor_cats_url, notice: 'Vendor cat was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor_cat
      @vendor_cat = VendorCat.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_cat_params
      params.require(:vendor_cat).permit(:title)
    end
end
