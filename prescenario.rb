class Car
	attr_accessor :current_speed
	attr_accessor :brand
	attr_accessor :max_speed

	def drive
		acceleration
	end

	def acceleration
		@current_speed = 0
		for i in [1..200]
			@current_speed += 1
			puts " driving "
			break if (@current_speed == @max_speed )
			puts "stop, the current_speed equals max_speed"
		end
	end
	def initialize
		@current_speed = 0
		@brand = "unknown"
		@max_speed = 0
	end
end

class Camaro < Car
	def initialize
		@brand = "chevy"
		@max_speed = 200
	end
end

car1 = Camaro.new

puts car1.drive


