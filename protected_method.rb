# protected method we can access the using of inherit the base call as a protectd methods
# this method scop is outer the call and under the call with the help of interitance of class

class Test
	protected

	def get_age
		p 'I am  23 years old'
	end
end

class Test1 < Test
	def get_data
		get_age
	end
end

Test1.new.get_data