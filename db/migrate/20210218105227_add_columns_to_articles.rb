class AddColumnsToArticles < ActiveRecord::Migration[6.0]
  def change
    add_column :articles, :title, :string
    add_column :articles, :text, :text
    add_column :articles, :genre_id, :integer
  end
end
