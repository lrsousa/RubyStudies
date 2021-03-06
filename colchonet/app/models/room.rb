class Room < ApplicationRecord

    validates_presence_of :title, :location, :description

    def complete_name
        "#{title}, #{location}"
    end
end
