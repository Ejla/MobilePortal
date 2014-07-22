class Admin::PortalsController < ApplicationController
  before_action :set_admin_portal, only: [:show, :edit, :update, :destroy]

  # GET /admin/portals
  # GET /admin/portals.json
  def index
    @portals = Portal.all
  end

  # GET /admin/portals/1
  # GET /admin/portals/1.json
  def show
  end

  # GET /admin/portals/new
  def new
    @portal = Portal.new
  end

  # GET /admin/portals/1/edit
  def edit
  end

  # POST /admin/portals
  # POST /admin/portals.json
  def create
    @portal = Portal.new(admin_portal_params)

    respond_to do |format|
      if @portal.save
        format.html { redirect_to @portal, notice: 'Portal was successfully created.' }
        format.json { render :show, status: :created, location: @portal }
      else
        format.html { render :new }
        format.json { render json: @portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/portals/1
  # PATCH/PUT /admin/portals/1.json
  def update
    respond_to do |format|
      if @portal.update(admin_portal_params)
        format.html { redirect_to [:admin], notice: 'Portal was successfully updated.' }
        format.json { render :show, status: :ok, location: @portal }
      else
        format.html { render :edit }
        format.json { render json: @portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/portals/1
  # DELETE /admin/portals/1.json
  def destroy
    @portal.destroy
    respond_to do |format|
      format.html { redirect_to admin_portals_url, notice: 'Portal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_portal
      @portal = Portal.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_portal_params
      params.require(:portal).permit(:title, :logo_image_id, :bg_css, :bg_image_id, :layout, :font, :theme)
    end
end
