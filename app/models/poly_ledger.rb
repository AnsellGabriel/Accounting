class PolyLedger < ApplicationRecord
  has_many :
  belongs_to :ledgerable, polymorphic: true
end
