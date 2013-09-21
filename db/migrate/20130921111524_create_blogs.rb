class CreateBlogs < ActiveRecord::Migration
  def change
    create_table :blogs do |t|
      t.string :name
      t.string :link
      t.integer :position, default: 0

      t.timestamps
    end
  end
end
