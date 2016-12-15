require 'stringio'
require 'CSV'

class App



  @@arr_of_arrs = CSV.read("./questions.csv", :headers => true)
  def getNumOfQ()
    numOfQ = gets.chomp.to_i
    # puts numOfQ
    if numOfQ < 1
        puts 'Please enter a number greater than 0'
      return numOfQ
    else
      return numOfQ
    end
  end

  # Array.new @arrayOfQ
  # CSV.foreach('./questions.csv', :headers => true) do |csv_obj|
  #
  #   puts csv_obj['question_id'] #prints the question_id of each object(question)
  #   @arrayOfQ.push(csv_obj)
  # end

  # puts @arrayOfQ
  # IDK if I will need this object stuff later, but I'm leaving it here for now

    def prompt

      puts 'How many questions do you want?';
      num = getNumOfQ
      puts @@arr_of_arrs[num]['question_id']
    end
end
App.new.prompt
