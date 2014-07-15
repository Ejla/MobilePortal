class WebclipsController < ApplicationController
  before_action :set_webclip, only: [:show, :edit, :update, :destroy]

  # GET /webclips
  # GET /webclips.json
  def index
    @webclips = Webclip.all
  end

  # GET /webclips/1
  # GET /webclips/1.json
  def show
  end

  # GET /webclips/new
  def new
    @webclip = Webclip.new
  end

  # GET /webclips/1/edit
  def edit
  end

  # POST /webclips
  # POST /webclips.json
  def create
    @webclip = Webclip.new(webclip_params)

    respond_to do |format|
      if @webclip.save
        format.html { redirect_to @webclip, notice: 'Webclip was successfully created.' }
        format.json { render :show, status: :created, location: @webclip }
      else
        format.html { render :new }
        format.json { render json: @webclip.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /webclips/1
  # PATCH/PUT /webclips/1.json
  def update
    respond_to do |format|
      if @webclip.update(webclip_params)
        format.html { redirect_to @webclip, notice: 'Webclip was successfully updated.' }
        format.json { render :show, status: :ok, location: @webclip }
      else
        format.html { render :edit }
        format.json { render json: @webclip.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /webclips/1
  # DELETE /webclips/1.json
  def destroy
    @webclip.destroy
    respond_to do |format|
      format.html { redirect_to webclips_url, notice: 'Webclip was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_webclip
      @webclip = Webclip.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def webclip_params
      params.require(:webclip).permit(:name, :link, :position, :description, :image_id, :page_ids => [])
    end
end
