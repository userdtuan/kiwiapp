class OrderDetail < ApplicationRecord
    belongs_to :order
    belongs_to :book
    validates :quantity, numericality: { greater_than: 1 }
end
