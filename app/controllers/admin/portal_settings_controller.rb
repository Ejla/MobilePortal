class Admin::PortalSettingsController < ApplicationController
  before_action :set_admin_portal_setting, only: [:show, :edit, :update, :destroy]

  # GET /admin/portal_settings
  # GET /admin/portal_settings.json
  def index
    @portals = PortalSetting.all
  end

  # GET /admin/portal_settings/1
  # GET /admin/portal_settings/1.json
  def show
  end

  # GET /admin/portal_settings/new
  def new
    @portal = PortalSetting.new
  end

  # GET /admin/portal_settings/1/edit
  def edit
  end

  # POST /admin/portal_settings
  # POST /admin/portal_settings.json
  def create
    @portal = PortalSetting.new(admin_portal_setting_params)

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

  # PATCH/PUT /admin/portal_settings/1
  # PATCH/PUT /admin/portal_settings/1.json
  def update
    respond_to do |format|
      if @portal.update(admin_portal_setting_params)
        format.html { redirect_to [:admin], notice: 'Portal was successfully updated.' }
        format.json { render :show, status: :ok, location: @portal }
      else
        format.html { render :edit }
        format.json { render json: @portal.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/portal_settings/1
  # DELETE /admin/portal_settings/1.json
  def destroy
    @portal.destroy
    respond_to do |format|
      format.html { redirect_to admin_portal_settings_url, notice: 'Portal was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_admin_portal_setting
      @portal = PortalSetting.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def admin_portal_setting_params
      params.require(:portal_setting).permit(:title, :logo_image_id, :bg_css, :bg_image_id, :layout, :font, :theme)
    end
end
