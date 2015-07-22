class VendorsController < ApplicationController
  
  layout 'vendor_layout'
  before_action :authenticate_vendor!, :except => [:frontview]

  before_action :set_vendor, only: [:show, :edit, :update, :destroy]

  # GET /vendors
  # GET /vendors.json
  def index
    unless current_vendor.supervendor
      redirect_to vendors_page_path
    end

    @vendors = Vendor.all
    
  end

  def page
  end

  def member
    unless current_vendor.statusta == 'Paid'
      redirect_to vendors_restrictarea_path
    end
  end

  def restrictarea
    # render layout: false
  end

  def pricelist
    
  end

  def frontview

    # @posts = Post.all
    @posts = Post.where('active = "Yes"').order('created_at DESC').limit('3')
    
    render layout: 'application'
    
  end

  # GET /vendors/1
  # GET /vendors/1.json
  def show
  end

  # GET /vendors/new
  def new
    @vendor = Vendor.new
  end

  # GET /vendors/1/edit
  def edit
   
  end

  # POST /vendors
  # POST /vendors.json
  def create
    @vendor = Vendor.new(vendor_params)

    respond_to do |format|
      if @vendor.save
        format.html { redirect_to @vendor, notice: 'Vendor was successfully created.' }
        format.json { render :show, status: :created, location: @vendor }
      else
        format.html { render :new }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /vendors/1
  # PATCH/PUT /vendors/1.json
  def update
    respond_to do |format|
      if @vendor.update(vendor_params)
        format.html { redirect_to @vendor, notice: 'Vendor was successfully updated.' }
        format.json { render :show, status: :ok, location: @vendor }
      else
        format.html { render :edit }
        format.json { render json: @vendor.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /vendors/1
  # DELETE /vendors/1.json
  def destroy
    @vendor.destroy
    respond_to do |format|
      format.html { redirect_to vendors_url, notice: 'Vendor was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_vendor
      @vendor = Vendor.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def vendor_params
      params.require(:vendor).permit(:name, :vendor_category, :image_url, :contactp, :address, :city, :website, :social, :social2, :social3, :social4, :description)
    end
    
end
