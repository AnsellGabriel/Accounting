class Ledger < ApplicationRecord
  attr_accessor :temp_amount
  
  validates_presence_of :account, :entry_type
  belongs_to :account, optional: true
  belongs_to :sub_account, optional: true
  belongs_to :ledgerable, polymorphic: true, optional: true

  ACCOUNT_ENTRY = ["Debit","Credit"]

  
end
