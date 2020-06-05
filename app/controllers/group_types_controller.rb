class GroupTypesController < ApiController
  before_action :set_group_type, only: [:show, :update, :destroy]

  # GET /group_types
  def index
    @group_types = GroupType.all

    render json: @group_types
  end

  # GET /group_types/1
  def show
    render json: @group_type
  end

  # POST /group_types
  def create
    @group_type = GroupType.new(group_type_params)

    if @group_type.save
      render json: @group_type, status: :created, location: @group_type
    else
      render json: @group_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /group_types/1
  def update
    if @group_type.update(group_type_params)
      render json: @group_type
    else
      render json: @group_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /group_types/1
  def destroy
    @group_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_group_type
      @group_type = GroupType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def group_type_params
      params.require(:group_type).permit(:option)
    end
end
