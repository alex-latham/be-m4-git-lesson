# frozen_string_literal: true

FactoryBot.define do
  factory :category do
    sequence :title do
      Faker::Hipster.word
    end
  end
end
