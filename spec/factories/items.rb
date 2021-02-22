FactoryBot.define do
  factory :item do
    name                          { 'test' }
    info                          { 'test' }
    category_id                   {    2   }
    sales_status_id               {    2   }
    shipping_fee_status_id        {    2   }
    prefecture_id                 {    2   }
    price                         {  300   }
    scheduled_delivery_id         {    2   }

    association :user

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
