FactoryBot.define do
  factory :user do  
    nickname                  {"test"}
    email                     {"test@example"}
    password                  {"abc123"}
    password_confirmation     {password}
    last_name                 {"山やまヤマ"}
    first_name                {"山やまヤマ"}
    last_name_kana            {"ヤマ"}
    first_name_kana           {"ヤマ"}
    user_birth_data_1i        {20200101}
  end
end