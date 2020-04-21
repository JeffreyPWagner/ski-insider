FactoryBot.define do
    factory :user, class: User do
      id {1}
      email {"test@user.com"}
      password {"qwerty"}
      admin {true}
      created_at {0}
      updated_at {0}
    end
  end