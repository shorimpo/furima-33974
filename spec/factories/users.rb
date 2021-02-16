FactoryBot.define do
  factory :user do
    nickname                  { 'test' }
    email                     { Faker::Internet.free_email }
    password                  { '123abc' }
    password_confirmation     { password }
    last_name                 { '山ヤマやま' }
    first_name                { '山ヤマやま' }
    last_name_kana            { 'ヤマ' }
    first_name_kana           { 'ヤマ' }
    user_birth_data_1i        { 20_200_101 }
  end
end
