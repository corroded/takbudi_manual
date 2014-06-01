FactoryGirl.define do
  sequence :email do |n|
    "person#{n}@example.com"
  end

  factory :user do
    email
    first_name 'Angry'
    last_name 'Bakunawa'
    password 'password'
    confirmed_at Time.now

    factory :unconfirmed_user do
      confirmed_at nil
    end
  end
end
