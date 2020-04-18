# frozen_string_literal: true

module Types
  class MutationType < BaseObject
    field :create_link, mutation: Mutations::CreateLink
  end
end
