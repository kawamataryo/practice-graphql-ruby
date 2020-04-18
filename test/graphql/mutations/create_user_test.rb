# frozen_string_literal: true

require 'test_helper'

class Mutations::CreateUser < ActiveSupport::TestCase
  def perform(args = {})
    Mutations::CreateUser.new(object: nil, field: nil, context: {}).resolve(args)
  end

  test 'create new user' do
    user = perform(
      name: 'Test user',
      auth_provider: {
        credentials: {
          email: 'email@example.com',
          password: 'password'
        }
      }
    )

    assert user.persisted?
    assert_equal user.name, 'Test user'
    assert_equal user.email, 'email@example.com'
  end
end
