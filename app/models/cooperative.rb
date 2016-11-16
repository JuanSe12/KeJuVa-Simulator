class Cooperative < ActiveRecord::Base
	has_many :credit_risks
	has_many :users
end
