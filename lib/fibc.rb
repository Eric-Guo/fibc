# frozen_string_literal: true

require_relative "fibc/version"
require_relative "fibc/fibc"

module Fibc
  def self.fib_pure(n)
    return n if n == 0 || n == 1
    fib_pure(n-1) + fib_pure(n-2)
  end
end
