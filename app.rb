require 'stringio'
require 'CSV'

class App



  @@arr_of_arrs = CSV.read("./questions.csv", :headers => true)
  def getNumOfQ()
    numOfQ = gets.chomp.to_i
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
      # puts @@arr_of_arrs.sample(num) sample not working for csv array
      i = 0
      while i < num
        puts @@arr_of_arrs[i]['question_id']
        i += 1
      end
    end
end
App.new.prompt
