# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  context 'with valid attributes' do
    subject(:post) { described_class.new(title: 'My first blog', author: User.create) }

    it 'is valid' do
      expect(post).to be_valid
    end
  end
end
