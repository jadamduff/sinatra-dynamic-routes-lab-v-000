require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]

    "#{@name.reverse!}"
  end

  get '/square/:number' do
    @number = params[:number].to_i

    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    @number = params[:number].to_i
    @phrase = params[:phrase].split('%20').join(' ')
    @print = []

    @number.times do
      @print << @phrase
    end

    "#{@print.join(' ')}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word6 = params[:word5]

    @phrase = []

    @phrase << @word1
    @phrase << @word2
    @phrase << @word3
    @phrase << @word4
    @phrase << @word6
    @phrase = @phrase.join(' ')
    @phrase << '.'

    "#{@phrase}"
  end

end
