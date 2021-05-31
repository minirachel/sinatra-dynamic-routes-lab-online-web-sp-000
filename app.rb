require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    status 200
    @reverse_name = params[:name].reverse
    "#{@reverse_name}"
  end

  get '/square/:number' do
    status 200
    @square_number = params[:number].to_i ** 2
    "#{@square_number.to_s}"
  end

  get '/say/:number/:phrase' do 
    status 200

    @phrase_output = params[:phrase] * params[:number].to_i
    "#{@phrase_output}"

    # string = ""

    # (params[:number].to_i).times do
    #   string += "#{params[:phrase]}\n"
    # end
    
    # string
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    status 200

    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    status 200

    @operation = params[:operation]
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    
    if @operation == "add"
      "#{@number1 + @number2}"
    elsif @operation == "subtract"
      "#{@number1 - @number2}"
    elsif @operation == "multiply"
      "#{@number1 * @number2}"
    elsif @operation == "divide"
      "#{@number1 / @number2}"
    end
  end
end