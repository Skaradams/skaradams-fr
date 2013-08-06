class AddColumnTaglineToArticles < ActiveRecord::Migration
  def up
    remove_column :articles, :body
    add_column :articles, :tagline, :string
  end

  def down
    remove_column :articles, :tagline
    add_column :articles, :body, :text
  end
end
