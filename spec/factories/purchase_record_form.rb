FactoryBot.define do
  factory :purchase_record_form do
    postal_code        {"123-4567"}
    prefecture_id      {     2    }
    city               {"test"}
    addresses          {"test"}
    building           {"test"}
    phone_number       {"08011112222"}
    token              {"tok_abcdefghijk00000000000000000"}
  end
end