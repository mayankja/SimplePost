# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with valid attributes' do
    subject(:user) { described_class.new(first_name: 'John', email: 'john@test.com') }

    it 'is valid' do
      expect(user).to be_valid
    end
  end

  context 'validations' do
    subject(:user) { described_class.new }

    it 'requires email' do
      expect(user.valid?).to eq(false)
      expect(user.errors[:email]).to include("can't be blank")
    end 
  end
end
