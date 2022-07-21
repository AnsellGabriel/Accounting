class GeneralledgersController < ApplicationController
  before_action :set_generalledger, only: %i[ show edit update destroy ]

  # GET /generalledgers or /generalledgers.json
  def index
    @generalledgers = Generalledger.all
  end

  # GET /generalledgers/1 or /generalledgers/1.json
  def show
  end

  # GET /generalledgers/new
  def new
    @generalledger = Generalledger.new
  end

  # GET /generalledgers/1/edit
  def edit
  end

  # POST /generalledgers or /generalledgers.json
  def create
    @generalledger = Generalledger.new(generalledger_params)

    respond_to do |format|
      if @generalledger.save
        format.html { redirect_to generalledger_url(@generalledger), notice: "Generalledger was successfully created." }
        format.json { render :show, status: :created, location: @generalledger }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @generalledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /generalledgers/1 or /generalledgers/1.json
  def update
    respond_to do |format|
      if @generalledger.update(generalledger_params)
        format.html { redirect_to generalledger_url(@generalledger), notice: "Generalledger was successfully updated." }
        format.json { render :show, status: :ok, location: @generalledger }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @generalledger.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /generalledgers/1 or /generalledgers/1.json
  def destroy
    @generalledger.destroy

    respond_to do |format|
      format.html { redirect_to generalledgers_url, notice: "Generalledger was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_generalledger
      @generalledger = Generalledger.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def generalledger_params
      params.require(:generalledger).permit(:reference_id, :entry_type, :transaction_date, :debit_code, :credit_code, :debit, :credit, :account_id, :branch_id, :sub_account_id)
    end
end
