# Build a class EmailAddressParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

class EmailParser
	attr_accessor :string
	def initialize(string)
		@string = string
	end

	def parse
		string.split().map do |email|
	  		if email[-1] != "m"
	    		email = email[0...email.length-1]
	  		else
	    		email
	  		end
		end.uniq
	end
end