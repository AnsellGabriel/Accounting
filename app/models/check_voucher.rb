class CheckVoucher < ApplicationRecord
  belongs_to :payee
  belongs_to :bank

  has_many :ledgers, as: :ledgerable
  accepts_nested_attributes_for :ledgers, reject_if: :all_blank, allow_destroy: true
end
