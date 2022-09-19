# frozen_string_literal: true

require 'rails_helper'

RSpec.describe User, type: :model do
  it 'email presennce' do
    u = User.new(first_name: 'asasas', last_name: 'sasas').save
    expect(u).to eq(false)
  end
  it 'validation test' do
    u = User.new(first_name: 'shankar', last_name: 'hurpude', email: 'shankar@gmail.com').save
    expect(u).to eq(true)
  end
end
