class Player

	def initialize(name)
		@name = name
	end

	attr_accessor :name
	attr_writer :picks

	def pick
		@picks
	end

end