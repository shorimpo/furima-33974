class AddColumnToPrefectures < ActiveRecord::Migration[6.0]
  def change
    add_column :prefectures, :prefecture_id, :integer
    add_column :prefectures, :text, :text
  end
end
