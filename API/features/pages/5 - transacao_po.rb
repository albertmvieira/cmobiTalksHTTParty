class Transacao
	include HTTParty
	base_uri "http://localhost:3000"
	#debug_output $stdout
	def initialize(body, headers)
		@options = {:body => body, :headers => headers}
	end

	def POST
		self.class.post("/transaction", @options)
	end
	
	def GET(id)
		self.class.get("/transaction/#{id}")
	end

	def GETALL
		self.class.get("/transaction")
	end

	def PUT(id)
		self.class.put("/transaction/#{id}", @options)
	end

end