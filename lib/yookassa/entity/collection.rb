# frozen_string_literal: true

require_relative "types"
require_relative "payment"
require_relative "receipt"
require_relative "refund"
require_relative "webhook"
require_relative "deal"

module Yookassa
  module Entity
    class Collection < Dry::Struct
      attribute :type, Types.Value("list")
      attribute? :next_cursor, Types::String
    end

    class PaymentCollection < Collection
      attribute :items, Types::Array.of(Payment)
    end

    class RefundCollection < Collection
      attribute :items, Types::Array.of(Refund)
    end

    class ReceiptCollection < Collection
      attribute :items, Types::Array.of(Receipt)
    end

    class DealsCollection < Collection
      attribute :items, Types::Array.of(Deal)
    end
  end
end
