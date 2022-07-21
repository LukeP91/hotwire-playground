class ManualInvestmentsController < ApplicationController
  before_action :set_manual_investment, only: %i[ show edit update destroy ]

  # GET /manual_investments or /manual_investments.json
  def index
    @manual_investments = ManualInvestment.order(bought_at: :desc)
  end

  # GET /manual_investments/1 or /manual_investments/1.json
  def show
  end

  # GET /manual_investments/new
  def new
    @manual_investment = ManualInvestment.new
  end

  # GET /manual_investments/1/edit
  def edit
  end

  # POST /manual_investments or /manual_investments.json
  def create
    @manual_investment = ManualInvestment.new(manual_investment_params)

    respond_to do |format|
      if @manual_investment.save
        format.html { redirect_to manual_investments_url, notice: "Manual investment was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /manual_investments/1 or /manual_investments/1.json
  def update
    respond_to do |format|
      if @manual_investment.update(manual_investment_params)
        format.html { redirect_to manual_investment_url(@manual_investment), notice: "Manual investment was successfully updated." }
        format.json { render :show, status: :ok, location: @manual_investment }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @manual_investment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /manual_investments/1 or /manual_investments/1.json
  def destroy
    @manual_investment.destroy

    respond_to do |format|
      format.html { redirect_to manual_investments_url, notice: "Manual investment was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_manual_investment
      @manual_investment = ManualInvestment.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def manual_investment_params
      params.require(:manual_investment).permit(:bought_at, :value, :investment_name)
    end
end
