# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    user_type "email"
    name "brute11k"
    email "brute11k@gmail.com"
    password "example"
  end
end
