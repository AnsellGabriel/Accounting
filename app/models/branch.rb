class Branch < ApplicationRecord
    validates_presence_of :branch_name
    def to_s
        branch_name
    end
end
