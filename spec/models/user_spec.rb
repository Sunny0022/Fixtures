# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email  (email) UNIQUE
#
require 'rails_helper'
require 'capybara/rspec'

RSpec.describe User, type: :model do
  fixtures :users
  test 'is valid with proper attributes' do
    user1 = users(:john)
    expect user1.to be_valid
  end
end
