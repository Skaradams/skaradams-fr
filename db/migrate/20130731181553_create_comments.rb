class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.integer :commentable_id
      t.integer :author_id

      t.timestamps
    end
  end
end
