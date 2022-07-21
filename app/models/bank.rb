class Bank < ApplicationRecord
    validates_presence_of :bank_title
    belongs_to :branch

    def to_s
        bank_title
    end
end
