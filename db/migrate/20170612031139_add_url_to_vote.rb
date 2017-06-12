class AddUrlToVote < ActiveRecord::Migration[5.0]
  def change
    add_column :votes, :url, :string
  end
end
