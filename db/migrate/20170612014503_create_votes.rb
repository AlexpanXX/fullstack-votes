class CreateVotes < ActiveRecord::Migration[5.0]
  def change
    create_table :votes do |t|
      t.string :name
      t.integer :total, default: 0
      t.integer :people, default: 0
      t.float :normal_votes, default: 0.0
      t.float :vip_votes, default: 0.0

      t.timestamps
    end
  end
end
