class SkillLevelsController < ApiController
  before_action :set_skill_level, only: [:show, :update, :destroy]

  # GET /skill_levels
  def index
    @skill_levels = SkillLevel.all

    render json: @skill_levels
  end

  # GET /skill_levels/1
  def show
    render json: @skill_level
  end

  # POST /skill_levels
  def create
    @skill_level = SkillLevel.new(skill_level_params)

    if @skill_level.save
      render json: @skill_level, status: :created, location: @skill_level
    else
      render json: @skill_level.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /skill_levels/1
  def update
    if @skill_level.update(skill_level_params)
      render json: @skill_level
    else
      render json: @skill_level.errors, status: :unprocessable_entity
    end
  end

  # DELETE /skill_levels/1
  def destroy
    @skill_level.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_skill_level
      @skill_level = SkillLevel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def skill_level_params
      params.require(:skill_level).permit(:name)
    end
end
