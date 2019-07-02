class Employee < ApplicationRecord
    has_one :dog

    def to_s
        # byebug
    end
end
