require 'stringio'

class App

  def getNumOfQ()
    numOfQ = gets.chomp.to_i
    puts numOfQ
    if numOfQ < 1
        puts 'Please enter a number greater than 0'
      return numOfQ
    else
      return numOfQ
    end
  end
    def prompt
      puts 'How many questions do you want?';
      getNumOfQ
    end
end
App.new.prompt
