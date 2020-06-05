class ApprovalTypesController < ApiController
  before_action :set_approval_type, only: [:show, :update, :destroy]

  # GET /approval_types
  def index
    @approval_types = ApprovalType.all

    render json: @approval_types
  end

  # GET /approval_types/1
  def show
    render json: @approval_type
  end

  # POST /approval_types
  def create
    @approval_type = ApprovalType.new(approval_type_params)

    if @approval_type.save
      render json: @approval_type, status: :created, location: @approval_type
    else
      render json: @approval_type.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /approval_types/1
  def update
    if @approval_type.update(approval_type_params)
      render json: @approval_type
    else
      render json: @approval_type.errors, status: :unprocessable_entity
    end
  end

  # DELETE /approval_types/1
  def destroy
    @approval_type.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_approval_type
      @approval_type = ApprovalType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def approval_type_params
      params.require(:approval_type).permit(:option)
    end
end
