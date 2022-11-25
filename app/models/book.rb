class Book < ApplicationRecord
    belongs_to :category 
    belongs_to :author
    validates :price, numericality: { greater_than: 0 }
end
