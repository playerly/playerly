class UserSportsController < ApiController
  before_action :set_user_sport, only: [:show, :update, :destroy]

  # GET /user_sports
  def index
    @user_sports = UserSport.all

    render json: @user_sports
  end

  # GET /user_sports/1
  def show
    render json: @user_sport
  end

  # POST /user_sports
  def create
    @user_sport = UserSport.new(user_sport_params)

    if @user_sport.save
      render json: @user_sport, status: :created, location: @user_sport
    else
      render json: @user_sport.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_sports/1
  def update
    if @user_sport.update(user_sport_params)
      render json: @user_sport
    else
      render json: @user_sport.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_sports/1
  def destroy
    @user_sport.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_sport
      @user_sport = UserSport.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def user_sport_params
      params.require(:user_sport).permit(:user_id, :sport_id, :skill_level_id)
    end
end
