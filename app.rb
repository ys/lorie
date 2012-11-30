require 'sinatra'
require 'slim'
require 'time'

get '/' do
  slim :index
end

post '/' do
  @now = Time.parse(params[:time])
  if @now.wday == 5 && @now.hour == 17
    slim :weekend
  else
    slim :index
  end
end
