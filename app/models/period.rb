class Period < ApplicationRecord
    validates_presence_of :period_title
    def to_s
        period_title
    end
end
