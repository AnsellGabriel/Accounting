class SubAccountsController < ApplicationController
  before_action :set_sub_account, only: %i[ show edit update destroy ]

  # GET /sub_accounts or /sub_accounts.json
  def index
    @sub_accounts = SubAccount.all
  end

  # GET /sub_accounts/1 or /sub_accounts/1.json
  def show
  end

  # GET /sub_accounts/new
  def new
    @sub_account = SubAccount.new
  end

  # GET /sub_accounts/1/edit
  def edit
  end

  # POST /sub_accounts or /sub_accounts.json
  def create
    @sub_account = SubAccount.new(sub_account_params)

    respond_to do |format|
      if @sub_account.save
        format.html { redirect_to sub_account_url(@sub_account), notice: "Sub account was successfully created." }
        format.json { render :show, status: :created, location: @sub_account }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @sub_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /sub_accounts/1 or /sub_accounts/1.json
  def update
    respond_to do |format|
      if @sub_account.update(sub_account_params)
        format.html { redirect_to sub_account_url(@sub_account), notice: "Sub account was successfully updated." }
        format.json { render :show, status: :ok, location: @sub_account }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @sub_account.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /sub_accounts/1 or /sub_accounts/1.json
  def destroy
    @sub_account.destroy

    respond_to do |format|
      format.html { redirect_to sub_accounts_url, notice: "Sub account was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_sub_account
      @sub_account = SubAccount.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def sub_account_params
      params.require(:sub_account).permit(:sub_account_title, :description)
    end
end
