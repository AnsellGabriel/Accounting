class CheckVoucher < ApplicationRecord
  belongs_to :payee
  belongs_to :bank
  has_many :generalledgers, as: :ledgerable
end
