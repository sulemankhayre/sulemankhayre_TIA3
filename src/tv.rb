


def self.read
file = File.open('./src/tv_list.txt')
data = file.readlines.map { |x| x.strip()}
puts "######"
puts data
puts "######"
end


puts "Welcome to the Tv show review"
puts "To procced please choose from the menu with numbers 1-5"
puts "Add Tv shows"
puts "Edit TV shows"
puts "Delete Tv shows"
puts "Search Tv shows"
puts "Exit"

select = gets.strip

if select == "1"
    module Tv
    end
elsif select == "2"
    puts "\n\nYour stored Reviews\n\n "
    puts read


    return
end


class InvalidNameError < StandardError
    #input of tv show
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
# input of director

def  self.get_direc
    print "Enter the Director:"
    director = gets.strip
    raise(InvalidNameError) if director.empty?
    return director
end



begin
foo2 = get_direc
puts "The TV Director is #{foo2}, it will be stored thankyou!"
rescue  InvalidNameError => e
    puts e.message
    retry
end
#input of review 

def  self.get_review
    print "Please tell thoughts on show!:"
    review = gets.strip
    raise(InvalidNameError) if review.empty?
    return review
end



begin
foo3 = get_review
puts " \n\nYour output\n\n#{foo3}\n\n It will be stored thankyou!"
rescue  InvalidNameError => e
    pp e.message
    retry
end


def  self.get_name
    print "Enter your DOB:"
    time = gets.strip
    print 'Enter your time'
    dob = gets.strip
    raise(InvalidNameError) if time.empty?
    return dob + time

def greet()
    puts "Hello there, #{name} !"
end
end
begin
foo4 = get_name

allfoo = foo.chomp  + "                  "+ foo2.chomp + "                      " + foo3.chomp + "                                                                             " + foo4.chomp 
puts "The date and time of the review are #{foo}"
rescue  InvalidNameError => e
    puts e.message
    retry

        end

 file = File.open('./src/tv_list.txt', 'a')
 file.puts "TV Show                   Director                  Review                                                                                          Date time"
 file.puts ""

#  file.puts foo.chomp

#  file.puts foo2.chomp
#  file.puts foo4
#  file.puts foo3.chomp
file.puts allfoo 
file.puts ""

 file.close



end


