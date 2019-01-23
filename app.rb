require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/' do
    "Hello Dynamic Routes Lab!"
  end
  
  get '/reversename/:name' do
    @name = params[:name]
    "Hello #{@name.reverse}"
  end
  
  get '/square/:number' do
    @number = params[:number].to_i
    "The square of #{@number} is #{@number*@number}"
  end
  
  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase]
    
    @str = ""
    
    "#{@number.times do 
       @str+=@phrase+" "
      end}"
      
      @str
    
    
  end
  
  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    
    @str =""
    
    "#{5.times do |i|
      @str+=@word#{i}+"."
    }"
    
    @str
    
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}"
  
  end
  
  get '/:operation/:number1/:number2' do
    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    case @operation
    
    when "add"
      "#{@number1+@number2}"
    when "subtract"
      "#{@number1-@number2}"
    when "multiply"
      "#{@number1*@number2}"
    when "divide"
      "#{@number1/@number2}"
    else
      "Wrong spelling in operation or not support this operation"
    end
      
    
  end
  

end