# frozen_string_literal: true
require "active_support/concern"
require "active_support/core_ext/class/attribute_accessors"
require "active_support/core_ext/string/strip"

require "cheesecloth/version"
require "cheesecloth/base_scope"
require "cheesecloth/errors"

module CheeseCloth
  extend ActiveSupport::Concern

  include BaseScope

  def initialize(scope: self.class.base_scope)
    raise MissingScopeError unless scope

    @scope = scope
  end
end
