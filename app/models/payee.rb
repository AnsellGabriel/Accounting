class Payee < ApplicationRecord
    validates_presence_of :payee


    def to_s
        payee
    end
end
