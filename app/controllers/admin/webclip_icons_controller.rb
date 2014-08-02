class Admin::WebclipIconsController < ApplicationController
  before_action :set_image, only: [:show, :edit, :update, :destroy]

  # GET /admin/webclip_icons
  # GET /admin/webclip_icons.json
  def index
    @images = WebclipIcon.all
  end

  # GET /admin/webclip_icons/1
  # GET /admin/webclip_icons/1.json
  def show
  end

  # GET /admin/webclip_icons/new
  def new
    @image = WebclipIcon.new
  end

  # GET /admin/webclip_icons/1/edit
  def edit
  end

  # POST /admin/webclip_icons
  # POST /admin/webclip_icons.json
  def create
    @image = WebclipIcon.new(webclip_icon_params)

    respond_to do |format|
      if @image.save
        format.html { redirect_to admin_webclip_icon_path(@image), notice: 'WebclipIcon was successfully created.' }
        format.json { render :show, status: :created, location: admin_webclip_icon_path(@image) }
      else
        format.html { render :new }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /admin/webclip_icons/1
  # PATCH/PUT /admin/webclip_icons/1.json
  def update
    respond_to do |format|
      if @image.update(webclip_icon_params)
        format.html { redirect_to admin_webclip_icon_path(@image), notice: 'WebclipIcon was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_webclip_icon_path(@image) }
      else
        format.html { render :edit }
        format.json { render json: @image.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /admin/webclip_icons/1
  # DELETE /admin/webclip_icons/1.json
  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to admin_webclip_icons_path, notice: 'WebclipIcon was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_image
      @image = WebclipIcon.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webclip_icon_params
      params.require(:webclip_icon).permit(:base64_string, :width, :height, :name, :tags)
    end
end
