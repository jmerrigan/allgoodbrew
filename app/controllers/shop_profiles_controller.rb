class ShopProfilesController < ApplicationController
  before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]
  before_action :set_shop_profile, only: [:show, :edit, :update, :destroy]

  # GET /shop_profiles
  # GET /shop_profiles.json
  def index
    @shop_profiles = ShopProfile.all
  end

  # GET /shop_profiles/1
  # GET /shop_profiles/1.json
  def show
  end

  # GET /shop_profiles/new
  def new
    @shop_profile = ShopProfile.new
  end

  # GET /shop_profiles/1/edit
  def edit
  end

  # POST /shop_profiles
  # POST /shop_profiles.json
  def create
    @shop_profile = ShopProfile.new(shop_profile_params)
    @shop_profile.user = current_user
    respond_to do |format|
      if @shop_profile.save
        format.html { redirect_to @shop_profile, notice: 'Shop profile was successfully created.' }
        format.json { render :show, status: :created, location: @shop_profile }
      else
        format.html { render :new }
        format.json { render json: @shop_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /shop_profiles/1
  # PATCH/PUT /shop_profiles/1.json
  def update
    respond_to do |format|
      if @shop_profile.update(shop_profile_params)
        format.html { redirect_to @shop_profile, notice: 'Shop profile was successfully updated.' }
        format.json { render :show, status: :ok, location: @shop_profile }
      else
        format.html { render :edit }
        format.json { render json: @shop_profile.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /shop_profiles/1
  # DELETE /shop_profiles/1.json
  def destroy
    @shop_profile.destroy
    respond_to do |format|
      format.html { redirect_to shop_profiles_url, notice: 'Shop profile was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_shop_profile
      @shop_profile = ShopProfile.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def shop_profile_params
      params.require(:shop_profile).permit(:user_id, :about, :location, :contact_number, :business_name)
    end
end
