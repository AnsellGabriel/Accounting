json.extract! check_voucher, :id, :payee_id, :bank_id, :voucher, :date_voucher, :address, :description, :amount, :created_at, :updated_at
json.url check_voucher_url(check_voucher, format: :json)
