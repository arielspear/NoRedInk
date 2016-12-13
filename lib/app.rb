require 'stringio'

class App
  def prompt
    puts 'How many questions do you want?';
  end
  def getNumOfQ()
    numOfQ = gets.chomp
    return 'foo'
  end
end
App.new.prompt
