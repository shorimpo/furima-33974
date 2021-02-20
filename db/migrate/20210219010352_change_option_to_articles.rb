class ChangeOptionToArticles < ActiveRecord::Migration[6.0]
  def change
    change_column :articles, :title, :text, null: false
    change_column :articles, :text, :text, null: false
    change_column :articles, :genre_id, :integer, null: false
  end
end
