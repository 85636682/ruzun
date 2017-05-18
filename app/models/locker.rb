class Locker < ApplicationRecord
    enum state: [:used, :unused, :maintained]
    
    has_many :user_lockers
end
