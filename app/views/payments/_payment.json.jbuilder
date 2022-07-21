json.extract! payment, :id, :payment_title, :description, :plan, :Abbreviation, :created_at, :updated_at
json.url payment_url(payment, format: :json)
