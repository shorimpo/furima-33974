FactoryBot.define do
  factory :item do
    name                          { 'test' }
    info                          { 'test' }
    category_id                   {  123   }
    sales_status_id               {  123   }
    shipping_fee_status_id        {  123   }
    prefecture_id                 {  123   }
    price                         {  300   }
    scheduled_delivery_id         {  123   }

    after(:build) do |message|
      message.image.attach(io: File.open('public/images/test_image.png'), filename: 'test_image.png')
    end
  end
end
