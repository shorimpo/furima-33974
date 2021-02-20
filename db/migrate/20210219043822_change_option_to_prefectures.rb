class ChangeOptionToPrefectures < ActiveRecord::Migration[6.0]
  def change
    change_column :prefectures, :prefecture_id, :integer, null: false
    change_column :prefectures, :text, :text
  end
end
