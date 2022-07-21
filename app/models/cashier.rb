class Cashier < ApplicationRecord
  validates_presence_of :orno, :amount_paid, :amount_deposit
  belongs_to :payee
  belongs_to :payment
  belongs_to :agent
  belongs_to :bank
  # has_many :generalledgers as: :ledgerable
end
