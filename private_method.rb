# private method call to only class body, out side of the class we can not call any private method
# when we call the private method from outside of the so, we can not accessible.
 
class Test

	def name
		get_name
	end

	private

	def get_name
		p "This is AJ"
	end
end

t= Test.new.name