class Generalledger < ApplicationRecord
  belongs_to :account
  belongs_to :branch
  belongs_to :sub_account
  belongs_to :ledgerable, polymorphic: true
end
