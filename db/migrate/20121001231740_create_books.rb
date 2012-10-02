class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.datetime :date_started
      t.datetime :date_finished
      t.string :link
      t.text :description
      t.text :summary
      t.string :cover_image

      t.timestamps
    end
  end
end
