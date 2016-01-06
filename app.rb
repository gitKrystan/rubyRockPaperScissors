require('sinatra')
require('sinatra/reloader')
require('./lib/RockPaperScissors')
also_reload('lib/**/*.rb')

get('/') do
  erb(:index)
end

get('/result') do
  challengerChoice = params.fetch('challengerRadios')
  defenderChoice = params.fetch('defenderRadios')
  if challengerChoice.beats?(defenderChoice) == true
    @result = "Challenger Wins!"
  elsif challengerChoice.beats?(defenderChoice) == false
    @result = "Defender Wins!"
  else
    @result = "It's a tie!"
  end
  erb(:result)
end
