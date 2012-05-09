class HomeController < ApplicationController
	def index
		authorize = UrlShortener::Authorize.new 'o_6bp01kelcc', 'R_a8f8fd04d722529dcdab231222ee783a'
		@client = UrlShortener::Client.new(authorize)
		@list = ActiveSupport::JSON.decode(File.read("#{Rails.root}/tmp/example.json"))
	end
end