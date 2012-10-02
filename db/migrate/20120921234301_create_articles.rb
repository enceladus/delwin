class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :slug
      t.text :body
      t.text :excerpt
      t.string :main_image

      t.timestamps
    end
  end
end
