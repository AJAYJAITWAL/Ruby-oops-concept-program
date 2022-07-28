module Test
	def run
		puts 'Test module'
	end
end


class A
	include Test
	run
end