require 'open-uri'
require 'rubygems'
require 'sinatra'
require 'json'
require "sinatra/jsonp"

get '/dog/:s' do
  @s = params[:s]
  website = "http://download.finance.yahoo.com/d/quotes.html?s="+@s+"=X&f=sl1d1t1ba&e=.html"
  @q = 0.0
  open(website){|f|
    @q = f.read.split(',')[1].to_f
  }
  data = [@q]
  JSONP data
end


