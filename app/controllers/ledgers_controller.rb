class LedgersController < ApplicationController
    before_action :set_ledger, only: %i[ show edit update destroy ]

    def show

    end

    def index
        @ledger = Ledger.all
    end

    def new
      # raise 'errors'
      if params[:type] == 'JV'
        @check_voucher = JournalVoucher.find(params[:v])
      elsif params[:type] == 'CV'
        @check_voucher = CheckVoucher.find(params[:v])
      elsif params[:type] == 'OR'
        @check_voucher = Cashier.find(params[:v])
      end
        @type = params[:type]
        # @check_voucher = JournalVoucher.find(params[:cv])
        @ledger = @check_voucher.ledgers.build #Ledger.new
    end

    def create
      # raise 'errors'
      if params[:type] == 'JV'
        @check_voucher = JournalVoucher.find(params[:v])
        @ledger =  @check_voucher.ledgers.build(ledger_params)
        @ledger.reference = @check_voucher.voucher
      elsif params[:type] == 'CV'
        @check_voucher = CheckVoucher.find(params[:v])
        @ledger =  @check_voucher.ledgers.build(ledger_params)
        @ledger.reference = @check_voucher.voucher
      elsif params[:type] == 'OR'
        @check_voucher = Cashier.find(params[:v])
        @ledger =  @check_voucher.ledgers.build(ledger_params)
        @ledger.reference = @check_voucher.orno
      end
      # @check_voucher = CheckVoucher.find(params[:v])
      # puts @check_voucher
      
      
      # @ledger =  @check_voucher.ledgers.build(ledger_params)
      if @ledger.entry_type == "Debit"
        @ledger.debit = ledger_params[:temp_amount]
        @ledger.credit = 0
      else
        @ledger.credit = ledger_params[:temp_amount]
        @ledger.debit = 0
      end
      respond_to do |format|
        if @check_voucher.ledgers << @ledger #@ledger.save
          # format.turbo_stream do
          #    render turbo_stream: turbo_stream.append("check_voucher", partial: 'check_vouchers/ledger_entry', locals: {check_vouchers: show})
          # end
          format.html { redirect_back fallback_location: @check_voucher, notice: "An account was entered." }
          format.json { render :show, status: :created, location: @ledger }
        else
          format.html { render :new, status: :unprocessable_entity }
          format.json { render json: @ledger.errors, status: :unprocessable_entity }
          format.turbo_stream { render :form_update, status: :unprocessable_entity }
        end
      end
    end

    def edit
      if @ledger.entry_type == "Debit"
        @temp_amount = @ledger.debit
      else
        @temp_amount = @ledger.credit
      end
    end

    def update
      # raise 'errors'
        @ledger.entry_type = ledger_params[:entry_type]
      if ledger_params[:entry_type] == "Debit"
        @ledger.debit = ledger_params[:temp_amount]
        # @ledger.credit = 0
      else
        @ledger.credit = ledger_params[:temp_amount]
        @ledger.debit = 0
      end

      respond_to do |format|
        if @ledger.update(ledger_params)
          format.html { redirect_back fallback_location: @check_voucher, notice: "Ledger was updated" }
          format.json { render :show, status: :created, location: @ledger }
        else
          format.html { render :edit, status: :unprocessable_entity }
          format.json { render json: @ledger.errors, status: :unprocessable_entity }
          format.turbo_stream { render :form_update, status: :unprocessable_entity }
        end
      end
    end
    private

    def set_ledger
      @ledger = Ledger.find(params[:id])
    end

    def ledger_params
        params.require(:ledger).permit(:id, :account_id, :sub_account_id, :reference, :entry_type, :debit, :credit, :temp_amount)
    end
end
