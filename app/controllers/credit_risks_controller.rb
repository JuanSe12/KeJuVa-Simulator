class CreditRisksController < ApplicationController
  before_action :set_credit_risk, only: [:show, :edit, :update, :destroy]

  # GET /credit_risks
  # GET /credit_risks.json
  def index
    @credit_risks = CreditRisk.all
  end

  # GET /credit_risks/1
  # GET /credit_risks/1.json
  def show
  end

  # GET /credit_risks/new
  def new
    @credit_risk = CreditRisk.new
  end

  # GET /credit_risks/1/edit
  def edit
  end

  # POST /credit_risks
  # POST /credit_risks.json
  def create
    @credit_risk = CreditRisk.new(credit_risk_params)

    respond_to do |format|
      if @credit_risk.save
        format.html { redirect_to @credit_risk, notice: 'Credit risk was successfully created.' }
        format.json { render :show, status: :created, location: @credit_risk }
      else
        format.html { render :new }
        format.json { render json: @credit_risk.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /credit_risks/1
  # PATCH/PUT /credit_risks/1.json
  def update
    respond_to do |format|
      if @credit_risk.update(credit_risk_params)
        format.html { redirect_to @credit_risk, notice: 'Credit risk was successfully updated.' }
        format.json { render :show, status: :ok, location: @credit_risk }
      else
        format.html { render :edit }
        format.json { render json: @credit_risk.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /credit_risks/1
  # DELETE /credit_risks/1.json
  def destroy
    @credit_risk.destroy
    respond_to do |format|
      format.html { redirect_to credit_risks_url, notice: 'Credit risk was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_credit_risk
      @credit_risk = CreditRisk.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def credit_risk_params
      params.require(:credit_risk).permit(:salario_basico, :gastos, :entradas_adicionales, :personas_acargo, :cooperative_id)
    end
end
