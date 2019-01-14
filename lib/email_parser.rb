# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').
require 'pry'
class EmailParser
  def initialize(email)
    @email = email
  end
  def parse

    email = @email.split(", ")
    count = 0
    email2 = []
    email.each do |x|
      if x.include?(" ")
        y = x.split(" ")
        y.each do|s|
          email2[count] = s
          count += 1
        end
      else
      email2[count] = x
      count += 1
    end
  end
    return email2.uniq
  end
end
