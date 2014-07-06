require "bigdecimal"
require "cartman/version"
require "cartman/configuration"
require "cartman/cart"
require "cartman/item"
require "cartman/item_collection"

module Cartman
  def self.config
    @config ||= Configuration.new
    yield @config if block_given?
    @config
  end
end
