class Post < ApplicationRecord
    belongs_to :category 
    belongs_to :author 
    enum status: {
        "unpublished" => false,
        "published" => true
      }
    # default_scope -> {where (status:true).order(created_at: :desc)}
    scope :published, lambda {where(:status=>true)}

end
