FactoryBot.define do
  factory :user do
    gimei = Gimei.name
    nickname        { Faker::Internet.user_name }
    email           { Faker::Internet.free_email }
    password        { '1a?' + Faker::Internet.password(min_length: 3) }
    password_confirmation { password }
    first_name      { gimei.first.kanji }
    last_name       { gimei.last.kanji }
    birthday   { Faker::Date.between(from: '1930-01-01', to: '2016-12-31') }
  end
end
