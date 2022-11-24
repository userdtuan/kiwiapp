class Author < ApplicationRecord
    has_many :books
    has_many :posts
    before_validation :set_defaults
  
    private
    def set_defaults
      name = "First Last" if name.blank?
    end
end
