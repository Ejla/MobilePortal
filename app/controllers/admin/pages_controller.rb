class Admin::PagesController < ApplicationController
  before_action :set_page, only: [:show, :edit, :update, :destroy, :remove_webclip]

  # GET /pages
  # GET /pages.json
  def index
    @pages = Page.all
  end

  # GET /pages/1
  # GET /pages/1.json
  def show
  end

  # GET /pages/new
  def new
    @page = Page.new
  end

  # GET /pages/1/edit
  def edit
    @available_webclips = Webclip.all - @page.webclips.to_a
  end

  # POST /pages
  # POST /pages.json
  def create
    @page = Page.new(page_params)

    respond_to do |format|
      if @page.save
        format.html { redirect_to admin_page_path(@page), notice: 'Page was successfully created.' }
        format.json { render :show, status: :created, location: admin_page_path(@page) }
      else
        format.html { render :new }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /pages/1
  # PATCH/PUT /pages/1.json
  def update
    respond_to do |format|
      if @page.update(page_params.slice(:name).merge(page_webclips_attributes))
        format.html { redirect_to admin_page_path(@page), notice: 'Page was successfully updated.' }
        format.json { render :show, status: :ok, location: admin_page_path(@page) }
      else
        format.html { render :edit }
        format.json { render json: @page.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /pages/1
  # DELETE /pages/1.json
  def destroy
    @page.destroy
    respond_to do |format|
      format.html { redirect_to admin_pages_url, notice: 'Page was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  def remove_webclip
    @page.page_webclips.where(webclip_id: params[:webclip_id]).destroy_all
    redirect_to [:admin, @page], notice: "Webclip was successfully removed from this page."
  end
  
  private
  
  def page_webclips_attributes
    # old simple_form_for format
    # "page_webclips_attributes"=>{"0"=>{"webclip_id"=>"4", "position"=>"", "id"=>"26"}, "1"=>{"webclip_id"=>"2", "position"=>"", "id"=>"27"}, "2"=>{"webclip_id"=>"1", "position"=>"", "id"=>"28"}, "3"=>{"webclip_id"=>"3", "position"=>"", "id"=>"29"}, "4"=>{"webclip_id"=>"", "position"=>""}}}
    
    # submitted array from sorted list:
    # "webclip_ids"=>["4", "2", "1", "2", "1", "3", "2", "1", "4"]}
    webclip_ids = page_params[:webclip_ids].to_a
    
    # build page_params hash for webclips
    webclips_attributes = {}
    webclip_ids.each_with_index do |webclip_id, i|
      webclips_attributes[i] = {"webclip_id" => webclip_id, "position"=> i}
    end
    # drop old ones
    @page.webclips.destroy_all
    
    return {"page_webclips_attributes" => webclips_attributes}
  end
  
    # Use callbacks to share common setup or constraints between actions.
    def set_page
      @page = Page.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_params
      # params.require(:page).permit(:name, :page_webclips_attributes => [:id, :webclip_id, :position])
      params[:page] ? params.require(:page).permit(:name, :webclip_ids => []) : {}
    end
end
