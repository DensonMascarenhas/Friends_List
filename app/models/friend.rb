class Friend < ApplicationRecord
    validates :name, presence:true, length:{maximum:20}
    validates :location, presence:true, length:{maximum:50}
    validates :dob, presence:true
    validates :contact, length:{maximum:10,minimum:10}

end
