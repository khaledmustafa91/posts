# frozen_string_literal: true
FactoryBot.define do
  factory :review do
    rate { Random.rand(1..5) }
    sequence(:comment) { |n| "Comment#{(n)}" }
    association(:post)
    association(:user)
  end
end
