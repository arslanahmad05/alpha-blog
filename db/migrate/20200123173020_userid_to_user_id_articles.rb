class UseridToUserIdArticles < ActiveRecord::Migration[5.2]
  def change
    rename_column :articles, :userid, :user_id
  end
end
