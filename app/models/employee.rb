class Employee < ApplicationRecord
    validates :alias, uniqueness: true
    validates :title, uniqueness: true

    def unique_job_alias

    end

    has_one :dog

    def to_s
        # byebug
    end
end
