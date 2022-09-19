class CheckVouchersController < ApplicationController
  before_action :set_check_voucher, only: %i[ show edit update destroy ]

  # GET /check_vouchers or /check_vouchers.json
  def index
    @check_vouchers = CheckVoucher.all
  end

  # GET /check_vouchers/1 or /check_vouchers/1.json
  def show
    @total_debit = @check_voucher.ledgers.where(entry_type: "Debit").sum(:debit)
    @total_credit = @check_voucher.ledgers.where(entry_type: "Credit").sum(:credit)
  end

  # GET /check_vouchers/new
  def new
    @check_voucher = CheckVoucher.new
  end

  # GET /check_vouchers/1/edit
  def edit
  end

  # POST /check_vouchers or /check_vouchers.json
  def create
    @check_voucher = CheckVoucher.new(check_voucher_params)

    respond_to do |format|
      if @check_voucher.save
        
        format.html { redirect_to check_voucher_url(@check_voucher), notice: "Check voucher was successfully created." }
        format.json { render :show, status: :created, location: @check_voucher }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @check_voucher.errors, status: :unprocessable_entity }
        
      end
    end
  end

  # PATCH/PUT /check_vouchers/1 or /check_vouchers/1.json
  def update
    respond_to do |format|
      if @check_voucher.update(check_voucher_params)
        format.html { redirect_to check_voucher_url(@check_voucher), notice: "Check voucher was successfully updated." }
        format.json { render :show, status: :ok, location: @check_voucher }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @check_voucher.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /check_vouchers/1 or /check_vouchers/1.json
  def destroy
    @check_voucher.destroy

    respond_to do |format|
      format.html { redirect_to check_vouchers_url, notice: "Check voucher was successfully destroyed." }
      format.json { head :no_content }
    end
  end

 

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_check_voucher
      @check_voucher = CheckVoucher.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def check_voucher_params
      params.require(:check_voucher).permit(:payee_id, :bank_id, :voucher, :date_voucher, :address, :description, :amount,
      ledgers_attributes: [:id, :account_id, :reference, :entry_type, :debit, :credit, :_destroy])
    end
end
