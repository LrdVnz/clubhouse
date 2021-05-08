class Post < ApplicationRecord
   belongs_to :users 

   validates :author_id, presence: true
   validates :body, presence: true 
end
