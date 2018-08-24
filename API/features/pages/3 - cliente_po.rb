class Cliente
	include HTTParty
	base_uri $env['base_uri']
	#debug_output $stdout
	def initialize(body, headers)
		@options = {:body => body, :headers => headers}
	end

	def POST
		self.class.post("/customer", @options)
	end
	
	def GET(id)
		self.class.get("/customer/#{id}")
	end

	def GETALL
		self.class.get("/customer")
	end

	def PUT(id)
		self.class.put("/customer/#{id}", @options)
	end

end