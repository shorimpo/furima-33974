class Item < ApplicationRecord
  has_one_attached :image

  include ActiveHash::Associations
  has_one :category
  has_one :status
  has_one :shippingfee
  has_one :prefecture
  has_one :scheduleddelivery

  with_options presence: true do
    validates :name
    validates :info
    validates :price
    validates :image
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
