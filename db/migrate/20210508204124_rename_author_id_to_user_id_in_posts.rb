class RenameAuthorIdToUserIdInPosts < ActiveRecord::Migration[6.1]
  def change
     change_table :posts do |t|
        t.rename :author_id, :user_id
     end
  end
end
