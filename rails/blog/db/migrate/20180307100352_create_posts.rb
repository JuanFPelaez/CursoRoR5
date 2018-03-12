class CreatePosts < ActiveRecord::Migration[5.1]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :introduction
      t.text :content
      t.text :url
      t.string :image_url
      t.string :date

      t.timestamps
    end
  end
end
