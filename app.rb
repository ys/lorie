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

WEEKENDS = ['http://www.youtube.com/embed/j0kiEwRI-rI?fs=1&feature=oembed&autoplay=1',
            'http://www.youtube.com/embed/Meb7uaNlcS0?fs=1&feature=oembed&autoplay=1',
            'http://www.youtube.com/embed/8PtGtcpGUyA?fs=1&feature=oembed&autoplay=1',
            'http://www.youtube.com/embed/KyisIXCTU9U?fs=1&feature=oembed&autoplay=1',
            'http://www.youtube.com/embed/SBamueZuEtQ?fs=1&feature=oembed&autoplay=1',
            'http://www.youtube.com/embed/e2rjSKoq6ng?fs=1&feature=oembed&autoplay=1']
