require 'arel_extensions/comparators'
require 'arel_extensions/date_duration'
require 'arel_extensions/math'
require 'arel_extensions/math_functions'
require 'arel_extensions/null_functions'
require 'arel_extensions/string_functions'

module ArelExtensions
  module Attributes
	include ArelExtensions::Comparators
	include ArelExtensions::DateDuration
	include ArelExtensions::Math
	include ArelExtensions::MathFunctions
	include ArelExtensions::NullFunctions
	include ArelExtensions::StringFunctions

  	def ==(other)
      Arel::Nodes::Equality.new self, Arel::Nodes.build_quoted(other, self)
  	end

    def !=(other)
      Arel::Nodes::NotEqual.new self, Arel::Nodes.build_quoted(other, self)
    end

  end
end