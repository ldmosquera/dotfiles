require 'rubygems'
require 'wirble'
require 'awesome_print'

Wirble.init
Wirble.colorize

module IRB
	def self.result_format
	   conf[:PROMPT][conf[:PROMPT_MODE]][:RETURN]
	end

	def self.result_format=(str)
	   result_format.replace(str)
	end

	def self.show_results
	   self.result_format = "=> %s\n"
	end

	def self.hide_results
	   self.result_format = ''
	end
end

#set up awesome_print for default class_eval
unless IRB.version.include?('DietRB')
	IRB::Irb.class_eval do
		def output_value
			ap(@context.last_value, :indent => -4)
		end
	end
else # MacRuby
	IRB.formatter = Class.new(IRB::Formatter) do
		def inspect_object(object)
			object.ai
		end
	end.new
end
