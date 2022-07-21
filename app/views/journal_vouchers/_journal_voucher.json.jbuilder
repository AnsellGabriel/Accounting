json.extract! journal_voucher, :id, :voucher, :date_voucher, :payee_id, :address, :description, :period_id, :branch_id, :created_at, :updated_at
json.url journal_voucher_url(journal_voucher, format: :json)
