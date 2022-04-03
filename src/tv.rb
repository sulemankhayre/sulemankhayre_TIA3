# Gems
require 'ruby_figlet'
require 'rainbow/refinement'
require 'tty-prompt'

begin
  arguments = ARGV
    case
    when ( arguments & ['--h', '--help']).any?
      File.foreach('./help_list.txt') do |line|
        puts line
      end
      exit
    when (arguments & ['--a', '--about']).any?
      File.foreach('./purpose.txt') do |line|
        puts line
      end
      exit
    when (arguments & ['--g', '--gems']).any?
      File.foreach('./gems.txt') do |line|
        if line.include?('gem')
          puts line
            end
      end
      exit
    end

  using RubyFiglet

  puts RubyFiglet::Figlet
  moo = 'Ruby!'
  moo.art!
  puts moo
  def self.getdata
    file = File.open('./tv_list.txt')
    data = file.readlines.map { |x| x.strip()}
  end

def self.read
  puts '######'
  File.open('./tv_list.txt', 'r') do |f|
    f.each_line do |line|
      puts line
    end
  end
  puts '######'
end

def self.search
  
  puts Rainbow('Enter tv show to search! ').green
  input = gets.chomp
  data = getdata
  free = data.find { |elem| elem.include?(input) }
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

def self.edit
  puts Rainbow('Enter tv show to edit! ').green
  input = gets.chomp
  data = getdata
  str  = data.find { |elem| elem.include?(input) }
  if str
    lines = data.select { |d| d != str }    

    File.open('./tv_list.txt', 'w') do |f|
      lines.each do |l|
        f.print Rainbow(l).color(3)
        f.puts ' '
      end
    end

    puts '######'
    puts "Editting: " + str
    puts '######'
    arr = str.split('][').map { |str| str.strip; str.gsub(']', ''); str.gsub('3m', ''); str.gsub(']m', ''); str.gsub('[', '')}

    puts arr
    foo = arr[0]
    foo2 = arr[1]
    foo3 = arr[2]
    foo4 = arr[3]
    foo5 = arr[4]

    puts Rainbow('Enter 0 to skip any entry!').green
    print Rainbow('Edit the Tv show: ').green
    tv = gets.strip
    foo = tv unless tv == '0'
    print Rainbow('Edit Director: ').green
    author = gets.strip
    foo2 = author unless author == '0'
    print Rainbow('Edit thoughts on show: ').green
    review = gets.strip
    foo3 = review unless review == '0'
    print Rainbow('Edit DOB: ').green
    dob = gets.strip 
    foo4 = dob unless dob == '0'

    print Rainbow('Edit time: ').green
    time = gets.strip
    foo5 = time unless time == '0'
    allfoo2 = [foo]
    allfoo3 = [foo2]
    allfoo4 = [foo3]
    allfoo5 = [foo5]
    allfoo6 = [foo4]

    file = File.open('./tv_list.txt', 'a')
    res = ''
    res += allfoo2.to_s
    res += allfoo3.to_s
    res += allfoo4.to_s
    res += allfoo5.to_s
    res += allfoo6.to_s

    file.puts Rainbow(res).color(3)
    file.close
    puts Rainbow('Entry updated!').green
  else
    puts '######'
    puts 'not found!'
    puts '######'
  end
end

  loop do
  def main_menu 
  prompt = TTY::Prompt.new

  puts Rainbow(' ##### MAIN MENU #####').green
  prompt.mask('What is your name?') do |q|
    q.required true
    q.validate /\A\w+\Z/
    q.modify   :capitalize
  end

  def quest
    puts Rainbow('Welcome to the Tv show review').green
    puts Rainbow('To procced please choose from the menu with numbers 1-5').green
    puts Rainbow('1.Add Tv shows').green
    puts Rainbow('2.Show all TV shows').green
    puts Rainbow('3.Edit').green
    puts Rainbow('4.Delete all shows And Restart').green
    puts Rainbow('5.Search if Tv shows present').green
    puts Rainbow('6.Exit').green
  end
  end

  main_menu
  quest
  select = gets.strip
  if select == '2'
    puts Rainbow("\n\nYour stored Reviews\n\n ").green
    puts read
  elsif select == '3'
    puts edit
  elsif select == '4'
    File.open('./tv_list.txt', 'w') { |file| file.truncate(0) }
  elsif select == '5'
    puts search
  elsif select == '6'
    exit
  end
  if select == '1'
    module Tv
    class InvalidNameError < StandardError
      def message
      return Rainbow('Show must not be empty').green
      end
  
      def self.gettv
        print Rainbow('Enter the Tv show: ').green
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
      def self.getdirec
        print Rainbow('Enter the Director: ').green
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
      def self.getreview
      print Rainbow('Please tell thoughts on show!: ').green
      review = gets.strip
      raise(InvalidNameError) if review.empty?

      return review
      end
      begin
        foo3 = getreview
        puts Rainbow(" \n\nYour output\n\n#{foo3}\n\n It will be stored thankyou!").green
      rescue InvalidNameError => e
        pp e.message
        retry
      end

      def self.getname
        print Rainbow('Enter date watched: ').green
        time = gets.strip
        print Rainbow('Enter time watched: ').green
        dob = gets.strip
        raise(InvalidNameError) if time.empty?

        return { dob: dob, time: time }
      end
      begin
    foo4 = getname

    allfoo2 = [foo]
    allfoo3 = [foo2]
    allfoo4 = [foo3]
    allfoo5 = [foo4[:dob]]
    allfoo6 = [foo4[:time]]

    puts Rainbow("The date and time of the review are #{foo}").green
      rescue InvalidNameError => e
      puts e.message
      retry
    end

      using Rainbow

      file = File.open('./tv_list.txt', 'a')

      res = ''
      res += allfoo2.to_s
      res += allfoo3.to_s
      res += allfoo4.to_s
      res += allfoo5.to_s
      res += allfoo6.to_s

      file.puts Rainbow(res).color(3)

      file.close
    end
  end

end
end
end
