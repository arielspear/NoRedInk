require 'stringio'
require 'CSV'
require 'pp'

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

      strand_ids = {}

      # make a hash with an empty array, then append the array with a Hash based on strand_ids
      CSV.foreach("questions.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
        strand_ids[row.fields[0]] = []
      end
      CSV.foreach("questions.csv", :headers => true, :header_converters => :symbol, :converters => :all) do |row|
        strand_questions = strand_ids[row.fields[0]]
        strand_questions.push Hash[row.headers[1..-1].zip(row.fields[1..-1])]
      end
      pp strand_ids
    end
end
App.new.prompt
