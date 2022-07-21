class Account < ApplicationRecord
    validates_presence_of :account_title
    # belongs_to :Account
    def to_s
        account_title
    end
end
