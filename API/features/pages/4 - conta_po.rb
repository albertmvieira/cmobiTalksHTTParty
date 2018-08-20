class Conta
	include HTTParty
	base_uri "http://localhost:3000"
	#debug_output $stdout
	def initialize(body, headers)
		@options = {:body => body, :headers => headers}
	end

	def POST
		self.class.post("/account", @options)
	end
	
	def GET(id)
		self.class.get("/account/#{id}")
	end

	def GETALL
		self.class.get("/account")
	end

	def PUT(id)
		self.class.put("/account/#{id}", @options)
	end

end