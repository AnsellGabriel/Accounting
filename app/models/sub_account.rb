class SubAccount < ApplicationRecord
    validates_presence_of :sub_account_title
    def to_s
        sub_account_title
    end
end
