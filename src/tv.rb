class InvalidNameError < StandardError
def message 
        return "Show must not be empty"
end
end
module Tv
def  self.get_tv
    print "Enter the Tv show:"
    tv = gets.strip
    raise(InvalidNameError) if tv.empty?
    return tv
end



begin
foo = get_tv
puts "The TV show you have watched is #{foo}, it will be stored thankyou!"
rescue  InvalidNameError => e
    puts e.message
    retry
end


def  self.get_tv
    print "Enter the Director show:"
    tv = gets.strip
    raise(InvalidNameError) if tv.empty?
    return tv
end



begin
foo = get_tv
puts "The TV Director is #{foo}, it will be stored thankyou!"
rescue  InvalidNameError => e
    puts e.message
    retry
end

end
