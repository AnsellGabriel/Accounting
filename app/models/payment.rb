class Payment < ApplicationRecord
    validates_presence_of :payment_title
    def to_s
        payment_title
    end
    
end
