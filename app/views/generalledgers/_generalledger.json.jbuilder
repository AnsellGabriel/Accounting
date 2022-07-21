json.extract! generalledger, :id, :reference_id, :entry_type, :transaction_date, :debit_code, :credit_code, :debit, :credit, :account_id, :branch_id, :sub_account_id, :created_at, :updated_at
json.url generalledger_url(generalledger, format: :json)
