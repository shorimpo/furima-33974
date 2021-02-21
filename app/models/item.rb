class Item < ApplicationRecord
  has_one_attached :image

  
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :category
  belongs_to :sales_status
  belongs_to :shipping_fee_status
  belongs_to :prefecture
  belongs_to :scheduled_delivery

  with_options presence: true do
    validates :name
    validates :info
    validates :price
    validates :image
    validates :category_id
    validates :sales_status_id
    validates :shipping_fee_status_id
    validates :prefecture_id
    validates :scheduled_delivery_id
  end

  validates :price, inclusion: { in: 300..9_999_999, message: 'Out of setting range' }
  validates :price, format: { with: /\A-?[0-9]+(\.[0-9]+)?\z/, message: 'Half-width number' }

  with_options numericality: { other_than: 1, message: 'Select' } do
    validates :category_id
    validates :sales_status_id
    validates :shipping_fee_status_id
    validates :prefecture_id
    validates :scheduled_delivery_id
  end

  def was_attached?
    image.attached?
  end
end
