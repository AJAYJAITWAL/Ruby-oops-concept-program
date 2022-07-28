class Test
	private
	def get_name
		p "Your Name"
	end
end
t = Test.new
t.send(:get_name)
p t.object_id	
p t.send(:object_id) 
p t.method(:object_id).call
