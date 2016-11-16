class PagesController < ApplicationController
	before_filter :require_login
	
	def index
	end
	def simulador_credito
		@cooperativa1 = Cooperative.find(1)
		@cooperativa2 = Cooperative.find(2)
	end
end
