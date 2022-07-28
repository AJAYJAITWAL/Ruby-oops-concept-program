class Test

	attr_accessor :first_name, :last_name

	def initialize(first_name, last_name)
		@first_name = first_name
		@last_name =  last_name
	end
end


t = Test.new("Aj", "jaitwal")
p t.first_name
p t.last_name