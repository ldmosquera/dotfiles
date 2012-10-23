require 'rubygems'
require 'wirble'

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
