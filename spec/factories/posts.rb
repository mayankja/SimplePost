# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    title { 'MyString' }
    author_id { 1 }
    body { 'MyText' }
  end
end
