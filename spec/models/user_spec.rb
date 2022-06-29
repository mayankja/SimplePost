# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  context 'with valid attributes' do
    subject(:user) { described_clas.new(first_name: 'John', job_title: 'Software Engineer') }

    it 'is valid' do
      expect(user).to be_valid
    end
  end

  context 'validations' do
    subject(:user) { described_class.new }

    it 'requires email' do
      expect(user.errors[:email]).to include("can't be blank")
    end

    it 'requires job_title' do
      expect(user.errors[:job_title]).to include("can't be blank")
    end
  end
end
