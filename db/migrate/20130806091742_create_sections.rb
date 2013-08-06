class CreateSections < ActiveRecord::Migration
  def change
    create_table :sections do |t|
      t.text :body
      t.string :legend

      t.timestamps
    end
  end
end
