class UserDetail < ApplicationRecord
    belongs_to :user
    enum level: {
        "Standard" => 0.02,
        "Premium" => 0.05,
        "Vip" => 0.1,
      }
end
