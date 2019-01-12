# Build a class EmailParser that accepts a string of unformatted 
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
class EmailParser

    def initialize(unformat_string)
        @unformat_string=unformat_string
    end

    def unformat_string
        @unformat_string
    end

    def parse
        unformat_string.split(/[\s,]/).join(" ").split(" ").uniq
    end
end

