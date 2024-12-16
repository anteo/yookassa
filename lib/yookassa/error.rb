# frozen_string_literal: true

module Yookassa
  class Error < StandardError
    extend Forwardable

    attr_reader :entity

    def_delegator :entity, :id
    def_delegator :entity, :code
    def_delegator :entity, :description
    def_delegator :entity, :parameter

    def initialize(entity)
      @entity = entity

      super(entity.description)
    end
  end
end
