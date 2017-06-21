class WeatherController < ApplicationController
  def zip

  end

  def view
    @key = 'weather' + params[:zip][:code]
    @link = 'https://weather.com/weather/today/l/' + params[:zip][:code]
    doc = Nokogiri::HTML(open( @link, {ssl_verify_mode: OpenSSL::SSL::VERIFY_NONE}))
    @current = doc.css('.today_nowcard-temp span').text
    @current_high = doc.css('span.deg-hilo-nowcard:nth-child(2) span').text
    @current_low = doc.css('span.deg-hilo-nowcard:nth-child(5) span').text
    @tomorrow_high = doc.css('#daypart-2 .today-daypart-temp span').text
    @tomorrow_low = doc.css('#daypart-3 .today-daypart-temp span').text
    if fragment_exist?(@key)
      @exist = 'Cached Information'
    end



  end
end
