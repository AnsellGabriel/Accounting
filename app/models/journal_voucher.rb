class JournalVoucher < ApplicationRecord
  belongs_to :payee
  belongs_to :period
  belongs_to :branch
  # has_many :generalledgers as: :ledgerable
  has_many :ledgers, as: :ledgerable
end
