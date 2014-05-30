FactoryGirl.define do
  factory :user do
    first_name 'Angry'
    last_name 'Bakunawa'
    password 'password'
    confirmed_at Time.now

    factory :unconfirmed_user do
      confirmed_at nil
    end
  end
end
