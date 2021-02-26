class PurchaseRecordForm
  include ActiveModel::Model
  attr_accessor :user_id, :item_id, :postal_code, :prefecture_id, :city, :addresses, :building, :phone_number, :purchase_record_id, :token
  with_options presence: true do
    validates :postal_code, format: {with: /\A[0-9]{3}-[0-9]{4}\z/, message: "is invalid. Include hyphen(-)"}
    validates :prefecture_id
    validates :city
    validates :addresses
    validates :phone_number, format: {with: /\A\d{,11}\z/ }
    validates :user_id
    validates :item_id
    validates :token

  end
  validates :prefecture_id, numericality: { other_than: 1, message: 'Select' }
  validates :phone_number, format: {with: /\A[0-9]+\z/, message: "Input only number"}
  def save
    purchase_record = PurchaseRecord.create(user_id: user_id, item_id: item_id)
    ShippingAddress.create(postal_code: postal_code, prefecture_id: prefecture_id, city: city, addresses: addresses, building: building, phone_number: phone_number, purchase_record_id: purchase_record.id)
  end

  
end
