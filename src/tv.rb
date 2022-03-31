# Gems
require 'ruby_figlet'
require 'rainbow/refinement'
require 'tty-prompt'

using RubyFiglet

puts RubyFiglet::Figlet
moo = 'Ruby!'
moo.art!
puts moo

def self.read
  file = File.open('./src/tv_list.txt')
  data = file.readlines.map { |x| x.strip()}

  puts '######'
  puts data
  puts '######'
end
def self.search
  input = gets.chomp
  file = File.open('./src/tv_list.txt')
  data = file.readlines.map { |x| x.strip()}
  
  free  = data.find{|elem| elem.include?(input) }
  if free
    puts '######'
    puts free
    puts '######'
  else
    puts '######'
    puts "not found!"
    puts '######'
  end
end

def main_menu 
prompt = TTY::Prompt.new

puts Rainbow(' ##### MAIN MENU #####').green
prompt.mask('What is your name?') do |q|
  q.required true
  q.validate /\A\w+\Z/
  q.modify   :capitalize
end

puts Rainbow('Welcome to the Tv show review').green
puts Rainbow('To procced please choose from the menu with numbers 1-5').green
puts Rainbow('1.Add Tv shows').green
puts Rainbow('2.Show all TV shows').green
puts Rainbow("3.Edit").green
puts Rainbow('4.Delete all shows And Restart').green
#scope issue
puts Rainbow('5.Search if Tv shows present').green
puts Rainbow('Exit').green
end
main_menu

# have to search and endit
select = gets.strip

case select
when '1'
module Tv 
end
end
case select
when '2'
  puts Rainbow("\n\nYour stored Reviews\n\n ").green
  puts read
  exit
when '4'
  File.open('./src/tv_list.txt', 'w') { |file| file.truncate(0) }
when '5'
  puts search
else 
  
end

class InvalidNameError < StandardError
  def message
    return Rainbow('Show must not be empty').green
  end
end

module Tv
  def self.gettv
    print Rainbow('Enter the Tv show:').green
    tv = gets.strip
    raise(InvalidNameError) if tv.empty?

    return tv
  end

  begin
  foo = gettv
  puts Rainbow("The TV show you have watched is #{foo}, it will be stored thankyou!").green
  rescue InvalidNameError => e

    puts e.message
    retry
  end
# input of director

  def self.getdirec
    print Rainbow('Enter the Director:').green
    director = gets.strip
    raise(InvalidNameError) if director.empty?

    return director
  end
  begin
    foo2 = getdirec
    puts Rainbow("The TV Director is #{foo2}, it will be stored thankyou!").green
  rescue InvalidNameError => e
    puts e.message
    retry
  end
#input of review 

  def self.get_review
    print Rainbow('Please tell thoughts on show!:').green
    review = gets.strip
    raise(InvalidNameError) if review.empty?

    return review
  end
  begin
  foo3 = get_review
  puts Rainbow(" \n\nYour output\n\n#{foo3}\n\n It will be stored thankyou!").green
  rescue  InvalidNameError => e
    pp e.message
    retry
  end

  def self.getname
    print Rainbow('Enter your DOB:').green
    time = gets.strip
    print Rainbow('Enter your time').green
    dob = gets.strip
    raise(InvalidNameError) if time.empty?

    return dob + time

  def greet()
    puts Rainbow("Hello there, #{name} !").green
  end
  end
  begin
foo4 = getname

allfoo2 = [foo]
allfoo3 = [foo2]
allfoo4 = [foo3]
allfoo5 = [foo4]



  
puts Rainbow("The date and time of the review are #{foo}").green
  rescue InvalidNameError => e
    puts e.message
    retry
  end

  using Rainbow

  

  file = File.open('./src/tv_list.txt', 'a')
  file.print Rainbow(['TV Show, Director, Review,Date time']).green
  file.puts ' '
  file.puts ' '
  file.print Rainbow(allfoo2).color(3)
  file.print Rainbow(allfoo3).color(3)
  file.print Rainbow(allfoo4).color(3)
  file.print Rainbow(allfoo5).color(3)

  file.puts ' '
  file.close



end

